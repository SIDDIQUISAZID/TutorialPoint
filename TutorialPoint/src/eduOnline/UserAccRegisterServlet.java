package eduOnline;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserAccRegisterServlet
 */
@WebServlet("/UserAccRegisterServlet")
public class UserAccRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher rd=request.getRequestDispatcher("/UserAccRegister.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		String username=request.getParameter("uname");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		String cpassword=request.getParameter("cpass");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String country=request.getParameter("country");
		String city=request.getParameter("city");
		String mobile=request.getParameter("mobile");
		
		 
		//PrintWriter pw=response.getWriter();
		request.setAttribute("msg", null);
		
		if((UserDatabase.isUniqueUsername(username))&& UserDatabase.isUniqueEmail(email)){
		
		if(password.equals(cpassword)){
		
		if(UserDatabase.passValidate(password)){
		
		
		
		if(UserDatabase.addUser(username, fname, lname, email, password, gender, dob, country, city, mobile))
		{
			
			//pw.println("Congratulations! You have successfully registered on eduOnline. You can now login to access your account");
			request.setAttribute("msg","Congratulations! You have successfully registered on eduOnline. You can now login to access your account" );
		
			doGet(request,response);
		}
		
		else{
			
			//pw.println("Oops! Something went wrong. Please try to register again");
			request.setAttribute("msg", "Oops! Something went wrong. Please try to register again");
			doGet(request,response);
		}
		}
		
		else{
			
			request.setAttribute("msg", "Invlalid Password. Password should be 6=15 characters long. It must contain one digit, one uppercase and lowercase letter and a special character like %$* etc.");
			doGet(request,response);
		}
		}
		
		else{
			request.setAttribute("msg", "Passwords do not match");
			doGet(request,response);
	}
	}
	
	else{
		
		request.setAttribute("msg", "Sorry this username and/or email id already exists. Your username and email id should be unique. Please try agian");
		doGet(request,response);
	}
	
	
	}
}
