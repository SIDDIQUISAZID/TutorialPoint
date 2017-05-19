package eduOnline;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResetPasswordServlet
 */
@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username=request.getParameter("username");
		String password=request.getParameter("pass");
		String cpassword=request.getParameter("cpass");
		
		if(!UserDatabase.isUniqueUsername(username)){
			
			if(password.equals(cpassword)){
				
				
				if(UserDatabase.passValidate(password)){
					
					if(UserDatabase.changePassword(username, password)){
					
					request.setAttribute("msg", "Password successfully changed. Please Login with your new password");
					RequestDispatcher rd=request.getRequestDispatcher("/ResetPassword.jsp");
					rd.forward(request, response);
				}
					
					else{
						request.setAttribute("msg", "An error occured. Password could not be changed.");
						RequestDispatcher rd=request.getRequestDispatcher("/ResetPassword.jsp");
						rd.forward(request, response);
						
					}
				
			}
				

				else{
					
					request.setAttribute("msg", "Invlalid Password.Password could not be changed. Password should be 6=15 characters long. It must contain one digit, one uppercase and lowercase letter and a special character like %$* etc.");
					RequestDispatcher rd=request.getRequestDispatcher("/ResetPassword.jsp");
					rd.forward(request, response);
					
				}
			}
			
			else{
				
				request.setAttribute("msg", "Passwords do not match. Please try again");
				RequestDispatcher rd=request.getRequestDispatcher("/ResetPassword.jsp");
				rd.forward(request, response);
			}
		}
		
		else{
			
			request.setAttribute("msg", "Sorry this username does not exist. Please use a registered username only.");
			RequestDispatcher rd=request.getRequestDispatcher("/ResetPassword.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
