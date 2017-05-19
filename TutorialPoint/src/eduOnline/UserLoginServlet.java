package eduOnline;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username=request.getParameter("username");
		String password=request.getParameter("pass");
		
		String fname=UserDatabase.checkUser(username, password);
		
		if(!fname.equals("na")&&!fname.equals("err")){
			
			HttpSession hs=request.getSession(true);
			hs.setAttribute("fname", fname);
			hs.setAttribute("username", username);
			response.sendRedirect("UserWelcome.jsp");
		}
		
		else{
			
			RequestDispatcher rd=request.getRequestDispatcher("/UserLogin.jsp");//Problem
			request.setAttribute("msg", "Enter correct id and/or password");
			rd.forward(request, response);
		}
		
		//doGet(request, response);
		
		
		
		
	}

}
