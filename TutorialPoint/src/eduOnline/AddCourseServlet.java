package eduOnline;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCourseServlet
 */
@WebServlet("/AddCourseServlet")
public class AddCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd=request.getRequestDispatcher("/AddCourse.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String course_name=request.getParameter("cname");
		int duration=Integer.parseInt(request.getParameter("duration"));
		String quiz_table=request.getParameter("quiz_table");
		request.setAttribute("msg", null);
		
		
		
		//response.sendRedirect("AdminWelcome.jsp");
		if(CourseDatabase.addCourse(course_name, duration,quiz_table)){
			
			//pw.println("Congratulations! You have successfully registered on eduOnline. You can now login to access your account");
			request.setAttribute("msg","Course Added" );
			//response.sendRedirect("UserLogin.html");
			doGet(request,response);
		}
		else{
		
			request.setAttribute("msg", "Oops! Something went wrong. Please try to add the course again");
			doGet(request,response);
		
		}
	}

}
