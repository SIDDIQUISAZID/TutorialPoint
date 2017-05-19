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
 * Servlet implementation class RemoveCourseServlet
 */
@WebServlet("/RemoveCourseServlet")
public class RemoveCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String course_name=(String)request.getParameter("course_name");
		HttpSession s=request.getSession(true);
		String username=(String)s.getAttribute("username");
		System.out.println(course_name);
		System.out.println(username);
		
		if(UserDatabase.removeCourse(course_name, username)){
		
		
		
		request.setAttribute("message2", "The course haas been removed from your list of courses");
		RequestDispatcher rd=request.getRequestDispatcher("/ViewAllCourses.jsp");
		rd.forward(request, response);
		}
		
		else{
			
			request.setAttribute("message2", "A problem occured. The course could not be removeed from your list of courses");
			RequestDispatcher rd=request.getRequestDispatcher("/ViewAllCourses.jsp");
			rd.forward(request, response);
		}
		
	}

}
