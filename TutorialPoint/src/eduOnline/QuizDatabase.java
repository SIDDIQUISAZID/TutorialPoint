package eduOnline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.Vector;


	
public class QuizDatabase {
	
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

	public static boolean addQuestions(String table_name, String question, String option1,String option2,String option3, String option4,String answer){
		
		try{
			
			String q= "INSERT INTO " +table_name+" (question,option1,option2,option3,option4,answer)" + "VALUES ('" + question + "', '" +option1 + "', '"+option2+"', '"+option3+"', '"+option4+"', '"+answer+"')";
			PreparedStatement pst = con.prepareStatement(q);
			//pst.setString(1, table_name);
			pst.executeUpdate();
			return true;
		}
		
		catch(Exception e){
			
			e.printStackTrace();
			System.out.println("Question could not be added!");
			return false;
		}
	}
	
	
public static Vector<Quiz> getAllQues(String table_name){
		
		try{
			Vector<Quiz> data= new Vector<Quiz>();
			String q="Select * from "+ table_name;
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			while(rs.next()){
				int sno=rs.getInt("sno");
				String question=rs.getString("question");
				String option1=rs.getString("option1");
				String option2=rs.getString("option2");
				String option3=rs.getString("option3");
				String option4=rs.getString("option4");
				String answer=rs.getString("answer");
				
				
				Quiz quiz=new Quiz(sno,question,option1,option2,option3,option4,answer);
				data.add(quiz);
				
			}
			return data;
		}
			catch(Exception e){
				e.printStackTrace();
				return null ;
			}
	}

 	
	public static boolean checkAnswer(String table_name,String question,String choice){
		
		try{
			String q="select * from "+table_name+ " where question=?";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1, question);
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next()){
				
				String answer=rs.getString("answer");
				if(choice.equals(answer)){
					System.out.println("Correct Answer");
					return true;
				}
				
				else{
					System.out.println("Wrong answer!!");
					return false;
				}
			}
			return false;
			
		}
		catch(Exception e ){
			
			e.printStackTrace();
			System.out.println("Problem occured!");
			return false;
		}
	}

	
	public static int noOfQues(String table_name){
		
		try{
			
			String q= "select max(sno) from "+table_name;
			PreparedStatement pst=con.prepareStatement(q);
			
			ResultSet rs=pst.executeQuery();
			while(rs.next()){
				
				int no=rs.getInt(1);
				//System.out.println(no);
				return no;
			}
			return -2;
		}
		
		catch(Exception e){
			
			e.printStackTrace();
			System.out.println("Error");
			return -1;
			
			
		}
	}
	public static void main(String[] args) {
		
		
		//System.out.println("What is the output? \n main() \n enum { india, is=7, GREAT };\n printf('%d %d', india, GREAT);");
		//QuizDatabase.addQuestions("cquiz", "What is the output? \n main() \n enum { india, is=7, GREAT };\n printf(\"%d %d\", india, GREAT);", "0 1","0 2","0 8","Compile Time Error","0 8");
	
//		System.out.println("All Users' Information: ");
//		
//		Vector <Quiz> temp=getAllQues("cquiz");
//		Enumeration<Quiz> ex=temp.elements();
//		while(ex.hasMoreElements()){
//			Quiz quiz=ex.nextElement();
//			System.out.println("--------------------------------");
//			System.out.println("Question : "+quiz.getQuestion());
//			System.out.println("Option1 : "+quiz.getOption1());
//			System.out.println("Option2 : "+quiz.getOption2());
//			System.out.println("Option3 : "+quiz.getOption3());
//			System.out.println("Option4 : "+quiz.getOption4());
//			System.out.println("Answer : "+quiz.getAnswer());
//			System.out.println("--------------------------------------");
//	}
		
	 //QuizDatabase.checkAnswer("cquiz", "Who invented the C language?", "Tim Berners Lee");
		
		//int x=QuizDatabase.noOfQues("cquiz");
		//System.out.println("Hello"+x);
	
	}

}
