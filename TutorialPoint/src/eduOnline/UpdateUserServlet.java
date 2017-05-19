package eduOnline;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String username=request.getParameter("username");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//String cpassword=request.getParameter("cpass");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String country=request.getParameter("country");
		String city=request.getParameter("city");
		String mobile=request.getParameter("mobile");
		
		User u=new User(username,fname,lname,email,password,gender,dob,country,city,mobile);
		
		
		response.setContentType("text/javascript");
		PrintWriter pw=response.getWriter();
		
		if(UserDatabase.UpdateUser(u)){
			request.setAttribute("success", "Profile Updated Successfully");
			//pw.println("<script>alert('Profile Updated Successfully')</script>");
		}
		
		else{
			request.setAttribute("success", "Update could not be carried out. Please try again");
			//pw.println("<script>alert('Update could not be carried out. Please try again')</script>");
		}
		
		response.sendRedirect("UserWelcome.jsp");
	}

	
}
