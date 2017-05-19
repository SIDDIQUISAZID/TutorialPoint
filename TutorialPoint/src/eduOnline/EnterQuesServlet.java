package eduOnline;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class EnterQuesServlet
 */
@WebServlet("/EnterQuesServlet")
public class EnterQuesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		RequestDispatcher rd=request.getRequestDispatcher("/AllCourses.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//String course_name=request.getParameter("course_name");
		String quiz_table=request.getParameter("quiz_table");
		String question=request.getParameter("question");
		String option1=request.getParameter("option1");
		String option2=request.getParameter("option2");
		String option3=request.getParameter("option3");
		String option4=request.getParameter("option4");
		String answer=request.getParameter("answer");
		
//		HttpSession hs=request.getSession(true);
//		hs.setAttribute("course_name", course_name);
		
		request.setAttribute("msg", null);
		
		if(QuizDatabase.addQuestions(quiz_table, question, option1, option2, option3, option4, answer)){
			
			request.setAttribute("msg", "Question added");
			
			doGet(request, response);
		}
		
		
		else{
		
		request.setAttribute("msg", "Question could not be added");
		doGet(request, response);
		}
	}

}
