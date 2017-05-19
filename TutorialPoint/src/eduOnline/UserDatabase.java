package eduOnline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserDatabase {

	
	static Connection con=null;
	
static void sqlConnect(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");//com,mysql,jdbc are packages. Driver is a class. "Class" is a class and forName is a method that will create an instance of the class that has been passed as an argument.
			System.out.println("JDBC Driver Loaded"); //no instance is created in this case as it is a driver it is simply loaded to provide an execution environment.
			
			con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/eduonline","root","sidd");
			
			System.out.println("Your database has been conected");
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			System.out.println("Database Connection Problem");
		}
	}


public static boolean passValidate(String password){
	
	 Pattern pswNamePtrn =Pattern.compile("((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#*&^!~$%]).{6,15})");
	
	 Matcher mtch = pswNamePtrn.matcher(password);
     if(mtch.matches()){
         return true;
     }
     return false;

	
}

public static boolean isUniqueUsername(String username){
	
	try{
		
		String q="select * from user_acc where username=?";
		PreparedStatement pst=con.prepareStatement(q);
		pst.setString(1, username);
		ResultSet rs=pst.executeQuery();
		
		if(!rs.next()){
			
			System.out.println("Unique username");
			return true;
		}
		
		else{
			
			System.out.println("Username already exists");
			return false;
		}
	}
	catch(Exception e){
		
		e.printStackTrace();
		System.out.println("Error!!!");
	}
	return false;
	
}



public static boolean isUniqueEmail(String email){
	
	try{
		
		String q="select * from user_acc where email=?";
		PreparedStatement pst=con.prepareStatement(q);
		pst.setString(1, email);
		ResultSet rs=pst.executeQuery();
		
		if(!rs.next()){
			
			System.out.println("Unique email");
			return true;
		}
		
		else{
			
			System.out.println("email already exists");
			return false;
		}
	}
	catch(Exception e){
		
		e.printStackTrace();
		System.out.println("Error!!!");
	}
	return false;
	
}

public static boolean existsEmail(String email){
	
	try{
		
		String q="Select * from user_acc where email=?";
		
		PreparedStatement pst=con.prepareStatement(q);
		pst.setString(1, email);
		ResultSet rs=pst.executeQuery();
		
		if(rs.next()){
			
			System.out.println("Email exists");
			return true;
		}
		
		else{
			
			System.out.println("Email does not exist");
			return false;
		}
	}
	catch(Exception e){
		
		e.printStackTrace();
		System.out.println("Error!!");
		return false;
		
	}
	
}

public static boolean changePassword(String username, String password){
	
	try{
		
		String q="update user_acc set password=? where username=?";
		PreparedStatement pst=con.prepareStatement(q);
		pst.setString(1, password);
		pst.setString(2, username);
		pst.executeUpdate();
		System.out.println("Password changed");
		return true;
		
	}
	catch(Exception e){
		
		e.printStackTrace();
		System.out.println("Error!!");
		
		return false;
	}
	
}



static boolean addUser(String username, String fname, String lname, String email, String password, String gender, String dob, String country, String city, String mobile) {
	
	try {
		String q = "INSERT INTO user_acc (username,fname,lname,email,password,gender,dob,country,city,mobile)" + "VALUES ('" + username + "', '" + fname + "', '"
				+lname+ "','" + email + "', '" + password + "', '" + gender + "', '"+ dob +"','"+ country + "','"+ city +"','" + mobile + "')";

		PreparedStatement pst = con.prepareStatement(q);
		pst.executeUpdate();

		//System.out.println("Record added to Database");
		return true;

	} catch (Exception e) {
		e.printStackTrace();
		return false;
	}
	
}


	static {
		sqlConnect();
	}
	
	
	static String checkUser(String username, String password){
		
		try{
			
			String q1="Select * from user_acc where username=? and password=?";
			PreparedStatement pst= con.prepareStatement(q1);
			pst.setString(1, username);
			pst.setString(2, password);
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()){
				return rs.getString("fname");
			}
			
			else{
				return "na";
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			return "err";
		}
	}
	
	

	 public static Vector<User> getAllUser(){
		
		try{
			Vector<User> data= new Vector<User>();
			String q="Select * from user_acc";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			while(rs.next()){
				String username=rs.getString("username");
				String fname=rs.getString("fname");
				String lname=rs.getString("lname");
				String email=rs.getString("email");
				String password=rs.getString("password");
				String gender=rs.getString("gender");
				String dob=rs.getString("dob");
				String country=rs.getString("country");
				String city=rs.getString("city");
				String mobile=rs.getString("mobile");
				
				User u=new User(username,fname,lname,email,password,gender,dob,country,city,mobile);
				data.add(u);
				
			}
			return data;
		}
			catch(Exception e){
				e.printStackTrace();
				return null ;
			}
	}
	 
	 
	 public static void DeleteUser(String username){
		 
		 try{
			 
			 String q="DELETE from user_acc where username =?";
			 PreparedStatement pst=con.prepareStatement(q);
			 pst.setString(1, username);
			 pst.executeUpdate();
			 
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 System.out.println("Unable to delete");
		 }
	 }
	 
	 
	 public static boolean UpdateUser(User u){
		 
		 try{
			
			 String q="UPDATE user_acc SET fname=?, lname=?,email=?,password=?,gender=?,dob=?,country=?,city=?,mobile=? WHERE username=?";
			 PreparedStatement pst=con.prepareStatement(q);
			 pst.setString(1, u.getFname());
			 pst.setString(2, u.getLname());
			 pst.setString(3, u.getEmail());
			 pst.setString(4, u.getGender());
			 pst.setString(5, u.getPassword());
			 pst.setString(6, u.getDob());
			 pst.setString(7, u.getCountry());
			 pst.setString(8, u.getCity());
			 pst.setString(9, u.getMobile());
			 pst.setString(10, u.getUsername()); 
			 pst.executeUpdate();
			 return true;
			 
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 System.out.println("Updation problems");
			 return false;
		 }
	 }
	 
	 
	 public static User viewUser(String username){
		 
		 try{
			 
			 String q= "SELECT * from user_acc where username=?";
			 PreparedStatement pst= con.prepareStatement(q);
				pst.setString(1, username);
				ResultSet rs=pst.executeQuery();
			
				while(rs.next()){
					username=rs.getString("username");
					String fname=rs.getString("fname");
					String lname=rs.getString("lname");
					String email=rs.getString("email");
					String password=rs.getString("password");
					String gender=rs.getString("gender");
					String dob=rs.getString("dob");
					String country=rs.getString("country");
					String city=rs.getString("city");
					String mobile=rs.getString("mobile");
					
					User u= new User(username,fname,lname,email,password,gender,dob,country,city,mobile);
					return u;
				}
				
		 }
		 
		 catch(Exception e){
			
			 e.printStackTrace();
			 System.out.println("Error!");
			 return null;
		 }
		 return null;
	
	 }
	 
	 
	 public static int addCourse(String username, String course){
		 try{
			 
			String q= "select * from user_acc where username=?";
			
			PreparedStatement pst= con.prepareStatement(q, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			pst.setString(1, username);
			
			ResultSet rs= pst.executeQuery();
			
			
			while(rs.next()){
				
				if((rs.getString("course1")).equals(course)||(rs.getString("course2")).equals(course)||(rs.getString("course3")).equals(course)||(rs.getString("course4")).equals(course)||(rs.getString("course5")).equals(course)){
					System.out.println("You are already enrolled in this course");
					return 0;
				}
				
				else 
					if((rs.getString("course1")).equals("none")||(rs.getString("course1")).equals("")){
					String q1="update user_acc set course1=? where username=?";
					PreparedStatement pst1=con.prepareStatement(q1);
					pst1.setString(1, course);
					pst1.setString(2, username);
					pst1.executeUpdate();
					System.out.println("Enrolled");
					return 1;
				}
				
				else 
					if((rs.getString("course2")).equals("none")||(rs.getString("course2")).equals("")){
						
						String q1="update user_acc set course2=? where username=?";
						PreparedStatement pst1=con.prepareStatement(q1);
						pst1.setString(1, course);
						pst1.setString(2, username);
						pst1.executeUpdate();
						System.out.println("Enrolled");
						return 1;
					}
					else 
						if((rs.getString("course3")).equals("none")||(rs.getString("course3")).equals("")){
							
							String q1="update user_acc set course2=? where username=?";
							PreparedStatement pst1=con.prepareStatement(q1);
							pst1.setString(1, course);
							pst1.setString(2, username);
							pst1.executeUpdate();
							System.out.println("Enrolled");
							return 1;
						}
					
				
					
						else
							if((rs.getString("course4")).equals("none")||(rs.getString("course4")).equals("")){
								String q1="update user_acc set course4=? where username=?";
								PreparedStatement pst1=con.prepareStatement(q1);
								pst1.setString(1, course);
								pst1.setString(2, username);
								pst1.executeUpdate();
								System.out.println("Enrolled");
								return 1;
							}
							else 
								if((rs.getString("course5")).equals("none")||(rs.getString("course5")).equals("")){
									String q1="update user_acc set course5=? where username=?";
									PreparedStatement pst1=con.prepareStatement(q1);
									pst1.setString(1, course);
									pst1.setString(2, username);
									pst1.executeUpdate();
									System.out.println("Enrolled");
									return 1;
								}
								
									
								
			}
		 
//	   String query = "SELECT course1,course2,course3,course4,course5 AS 'column' from user_acc where course1 or course2 or course3 or course4 or course5 IS NULL AND  username=? limit 1"; 
//		 //String q= "UPDATE user_acc SET current_courses=?, doj=? where username=?";
//		 PreparedStatement pst = con.prepareStatement(query);
//		 pst.setString(1, username);
//		// pst.setString(3, username);
//		 //pst.executeUpdate();
//		 ResultSet rs=pst.executeQuery();
//		 
//		 
//		 while(rs.next()){
//			 
//			 ResultSetMetaData rsmd = rs.getMetaData();
//			 String name = rsmd.getColumnName(1);
//			 System.out.println(name); 
//		String q= "UPDATE user_acc SET 'column'=? where username=?";
////			pst=con.prepareStatement(q);
////			pst.setString(1, course);
//			 
//			PreparedStatement pst1=con.prepareStatement(q,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
//			pst1.setString(1, course);
//			pst1.setString(2, username);
//			pst1.executeUpdate();
//			 	//ResultSet rs1 = pst.executeQuery( "UPDATE user_acc SET column=?");

		// }
		 System.out.println("You are already enrolled in 5 courses. Please complete one of them to enroll in a new course.");
			return -1;
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 System.out.println("Course not added");
			 return -2;
		 }
		 
	 }
	 
	 public static boolean checkCourse(String username,String course){
		 
		 try{
			 
			 String q= "select * from user_acc where username=?";
				
			
				PreparedStatement pst= con.prepareStatement(q, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				pst.setString(1, username);
				
				ResultSet rs= pst.executeQuery(); 
				while(rs.next()){
					
					if((rs.getString("course1")).equals(course)||(rs.getString("course2")).equals(course)||(rs.getString("course3")).equals(course)||(rs.getString("course4")).equals(course)||(rs.getString("course5")).equals(course)){
						//System.out.println("You are already enrolled in this course");
						return true;
					}
		 
				}
				
				return false;
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 return false;
		 }
			 
			 
		 }
		 
	 
	 public static boolean removeCourse(String course_name, String username){
		 
		 try{
			 
			 String q= "select * from user_acc where username=?";
				
				PreparedStatement pst= con.prepareStatement(q, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				pst.setString(1, username);
				
				ResultSet rs= pst.executeQuery();
				
				while(rs.next()){
					
					if(rs.getString("course1").equals(course_name)){
						
						String q1="update user_acc set course1='none' where username=?";
						PreparedStatement pst1=con.prepareStatement(q1);
						pst1.setString(1, username);
						//pst1.setString(2, username);
						pst1.executeUpdate();
						System.out.println("Course Removed");
						return true;
					}
					else 
						if(rs.getString("course2").equals(course_name)){
							
							String q1="update user_acc set course2='none' where username=?";
							PreparedStatement pst1=con.prepareStatement(q1);
							pst1.setString(1, username);
							//pst1.setString(2, username);
							pst1.executeUpdate();
							System.out.println("Course Removed");
							return true;
						}
						else
							if(rs.getString("course3").equals(course_name)){
								
								String q1="update user_acc set course3='none' where username=?";
								PreparedStatement pst1=con.prepareStatement(q1);
								pst1.setString(1, username);
								//pst1.setString(2, username);
								pst1.executeUpdate();
								System.out.println("Course Removed");
								return true;
							}
							else
								if(rs.getString("course4").equals(course_name)){
									
									String q1="update user_acc set course4='none' where username=?";
									PreparedStatement pst1=con.prepareStatement(q1);
									pst1.setString(1, username);
									//pst1.setString(2, username);
									pst1.executeUpdate();
									System.out.println("Course Removed");
									return true;
								}
								else
									if(rs.getString("course5").equals(course_name)){
										
										String q1="update user_acc set course5='none' where username=?";
										PreparedStatement pst1=con.prepareStatement(q1);
										pst1.setString(1, username);
										//pst1.setString(2, username);
										pst1.executeUpdate();
										System.out.println("Course Removed");
										return true;
									}
						
				}
				return true;
			 
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 System.out.println("Could not be deleted");
			 return false;
		 }
	 }

	
	
	public static void main(String[] args) {
		
		//System.out.println("Add user data");
		//UserDatabase.addUser("HS", "Harshita", "Sharma", "hrsht.sharma4@gmail.com", "Abc12345*", "female", "23.03.94", "India", "Delhi", "1234567890");
		//System.out.println(UserDatabase.checkUser("HS", "Abc12345*"));
//		System.out.println("All Users' Information: ");
//		
//		Vector <User> temp=getAllUser();
//		Enumeration<User> ex=temp.elements();
//		while(ex.hasMoreElements()){
//			User u=ex.nextElement();
//			System.out.println("--------------------------------");
//			System.out.println("Username : "+u.getUsername());
//			System.out.println("First Name : "+u.getFname());
//			System.out.println("Last Name : "+u.getLname());
//			System.out.println("e-mail : "+u.getEmail());
//			System.out.println("Password : "+u.getPassword());
//			System.out.println("Gender : "+u.getGender());
//			System.out.println("Date Of Birth : "+u.getDob());
//			System.out.println("Country : "+u.getCountry());
//			System.out.println("City : "+u.getCity());
//			System.out.println("Mobile : "+u.getMobile());
//			System.out.println("--------------------------------------");
//	}
		
		//UserDatabase.DeleteUser("JabraFan");
		
	//User u= new User("HS","Harshita","Sharma","harshitasharma23@ymail.com","Female","Abc12345*","1994-03-23","India","Delhi","5275757575");
		//boolean updation=UserDatabase.UpdateUser(u);
		//System.out.println(updation);

//		User user=UserDatabase.viewUser("Nishu");
//		
//		System.out.println("Username: "+user.getUsername());
//		
//		System.out.println("First Name : "+user.getFname());
//		System.out.println("Last Name : "+user.getLname());
//		System.out.println("e-mail : "+user.getEmail());
//		System.out.println("Password : "+user.getPassword());
//		System.out.println("Gender : "+user.getGender());
//		System.out.println("Date Of Birth : "+user.getDob());
//		System.out.println("Country : "+user.getCountry());
//		System.out.println("City : "+user.getCity());
//		System.out.println("Mobile : "+user.getMobile());
		
//		
//		if(UserDatabase.addCourse("Nandu", "C++")){
//			
//			System.out.println("You are now enrolled in this course");
//		}
//		
//		else{
//			
//			System.out.println("Sorry! Try enrolling again");
//		}
//		
//int x=UserDatabase.addCourse("HS", "C");
	
	//	System.out.println(x);
		
		//UserDatabase.removeCourse("J2SE", "HS");
		
//		if(UserDatabase.passValidate("Abc12345*")){
//			
//			System.out.println("Password is Valid");
//		}
//		
//		else
//			System.out.println("Invalid Password");
		
//		if(UserDatabase.isUniqueUsername("PeeCee")){
//			
//			System.out.println("Username added");
//		}
//		
//		else
//			System.out.println("USername not added");
		
//		
//		if(UserDatabase.isUniqueEmail("abcd@gmail.com")){
//		
//		System.out.println("email id added");
//	}
//	
//	else
//		System.out.println("email id not added");
		
//		if(UserDatabase.existsEmail("harshitasharma@ymail.com")){
//			
//			System.out.println("Yes");
//			
//			
//		}
//		else
//			System.out.println("No");
		
//		
//		if(!UserDatabase.isUniqueUsername("HS")){
//			
//			System.out.println("Password changed");
//			
//		}
//		
//		else{
//			
//			System.out.println("Password not changed");
//		}
	}
}
