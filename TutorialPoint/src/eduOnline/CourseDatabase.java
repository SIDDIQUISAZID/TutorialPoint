package eduOnline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.Vector;


public class CourseDatabase {
	
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
	
	static {
		sqlConnect();
	}
	
	
	
	static boolean addCourse( String course_name, int duration, String quiz_table){
		
		try {
			 int course_id=101;
			
			String query= "SELECT MAX(course_id) FROM courses";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(query);
			while(rs.next()){
				course_id=rs.getInt(1);
			}
			course_id=course_id+1;
			String q = "INSERT INTO courses (course_id,course_name,duration,quiz_table)" + "VALUES ('" + course_id + "', '" +course_name + "', '"
					+duration+ "', '"+quiz_table+"')";

			PreparedStatement pst = con.prepareStatement(q);
			pst.executeUpdate();
			

			//System.out.println("Record added to Database");
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	 public static Vector<Courses> getAllCourses(){
			
			try{
				Vector<Courses> data= new Vector<Courses>();
				String q="Select * from courses";
				Statement smt=con.createStatement();
				ResultSet rs=smt.executeQuery(q);
				while(rs.next()){
					
					int course_id=rs.getInt(1);
					String course_name=rs.getString("course_name");
					int duration=rs.getInt(3);
					String quiz_table=rs.getString("quiz_table");
					
					Courses c=new Courses(course_id, course_name, duration,quiz_table);
					data.add(c);
					
				}
				return data;
			}
				catch(Exception e){
					e.printStackTrace();
					return null ;
				}
		}
		 
	 
 public static void DeleteCourse(int course_id){
		 
		 try{
			 
			 String q="DELETE from courses where course_id =?";
			 PreparedStatement pst=con.prepareStatement(q);
			 pst.setInt(1, course_id);
			 pst.executeUpdate();
			 
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 System.out.println("Unable to delete");
		 }
	 }
 
 
 public static void UpdateCourse(Courses c){
	 
	 try{
		
		 String q="UPDATE courses SET course_name=?, duration=?, quiz_table=? WHERE course_id=?";
		 PreparedStatement pst=con.prepareStatement(q);
		 pst.setString(1, c.getCourse_name());
		 pst.setInt(2,c.getDuration());
		 pst.setString(3, c.getQuiz_table());
		 pst.setInt(4, c.getCourse_id());
		
		 pst.executeUpdate();
		 
	 }
	 
	 catch(Exception e){
		 
		 e.printStackTrace();
		 System.out.println("Updation problems");
	 }
 }
 
 
 public static Vector<Courses> searchCourse(String course){
	 
	
	 try{
		 
		 Vector<Courses> data= new Vector<Courses>();
	 
	 String search= course + "%";
	 String q="select * from courses where course_name like ?";
	 PreparedStatement pst=con.prepareStatement(q);
	 pst.setString(1, course +"%");
	 ResultSet rs=pst.executeQuery();
		while(rs.next()){
			
			int course_id=rs.getInt(1);
			String course_name=rs.getString("course_name");
			int duration=rs.getInt(3);
			String quiz_table=rs.getString("quiz_table");
			
			Courses c=new Courses(course_id, course_name, duration,quiz_table);
			data.add(c);
			
		}
		return data;
	 }
		
		catch(Exception e){
			
			e.printStackTrace();
			System.out.println("Error");
			return null;
		}
 }
	 

	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		if(CourseDatabase.addCourse("C#", 32,"C#quiz" )){
//			
//			System.out.println("Course Added to Database");
//		}
//		
//		else
//		{
//			System.out.println("Course could not be added");
//		}
		
//		System.out.println("All Users' Information: ");
//		
//	Vector <Courses> temp=getAllCourses();
//		Enumeration<Courses> ex=temp.elements();
//		while(ex.hasMoreElements()){
//			Courses c=ex.nextElement();
//			System.out.println("Course_id :"+c.getCourse_id());
//			System.out.println("Course_name :"+c.getCourse_name());
//			System.out.println("Course_duratin :"+c.getDuration());
//			
//		System.out.println("--------------------------------------");
//	}
		
//		CourseDatabase.DeleteCourse(108);
		
	//	Courses c= new Courses(105,"J2EE",20,"j2eequiz");
	//	CourseDatabase.UpdateCourse(c);
		
		//CourseDatabase.searchCourse("C");
		
//		Vector <Courses> temp= searchCourse("C");
//		Enumeration<Courses> ex=temp.elements();
//		while(ex.hasMoreElements()){
//			Courses c=ex.nextElement();
//			//System.out.println("Course_id :"+c.getCourse_id());
//			System.out.println("Course_name :"+c.getCourse_name());
//			System.out.println("Course_duratin :"+c.getDuration());
//			
//		System.out.println("--------------------------------------");
//	}
	}
	

}
