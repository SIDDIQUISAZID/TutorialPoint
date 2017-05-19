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
 * Servlet implementation class JoinCourseServlet
 */
@WebServlet("/JoinCourseServlet")
public class JoinCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//if(request.getAttribute("username")==null){
			
			
			request.setAttribute("message", "Please Login to join course");
			RequestDispatcher rd=request.getRequestDispatcher("/UserLogin.jsp");
			rd.forward(request, response);
	
		
		
			
		}
	
//			
	
//		
//		
//		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(true);
		String username=s.getAttribute("username").toString();
		String course=request.getParameter("course");
		int x=10;
		System.out.println(username+" "+course);
		x=UserDatabase.addCourse(username, course);
			if(x==1){
			
			request.setAttribute("message", "Enrolled in course");
			//response.sendRedirect("ViewAllCourses.jsp");
			//RequestDispatcher rd=request.getRequestDispatcher("/ViewAllCourses.jsp");
			//rd.forward(request, response);
			//doGet(request,response);
		}
			else if(x==0){
				
				request.setAttribute("message", " You are alreaady enrolled in this course");
			}
		
				
			else if(x==-1){
				request.setAttribute("message", "You are already enrolled in 5 courses. Please complete one of them to enroll in a new course");
				
			}
		else {
			
//			response.setContentType("text/html");
//			PrintWriter pw= response.getWriter();
//			pw.println("<html><body>");
//			pw.println("Please login to join course");
//			pw.println("</body></html>");
			
			
			request.setAttribute("message", "Sorry! An error occured.Please try again later" );
			//response.sendRedirect("ViewAllCourses.jsp");
			//RequestDispatcher rd= request.getRequestDispatcher("/ViewAllCourses.jsp");
			//rd.forward(request, response);
			
		}
			
			RequestDispatcher rd=request.getRequestDispatcher("/ViewAllCourses.jsp");
			rd.forward(request, response);
	}

}
