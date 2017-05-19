package eduOnline;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eduOnline.Courses;
import eduOnline.CourseDatabase;

/**
 * Servlet implementation class UpdateControlServlet
 */
@WebServlet("/UpdateControlServlet")
public class UpdateControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int course_id=Integer.parseInt(request.getParameter("course_id"));
		String course_name=request.getParameter("course_name");
		int duration=Integer.parseInt(request.getParameter("duration"));
		String quiz_table=request.getParameter("quiz_table");
		
		
		Courses c=new Courses(course_id,course_name,duration,quiz_table);
		CourseDatabase.UpdateCourse(c);
		response.sendRedirect("AllCourses.jsp");
				
	
		
	}

	
	
}
