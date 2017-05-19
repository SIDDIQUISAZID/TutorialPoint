package eduOnline;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class QuizCheckServlet
 */
@WebServlet("/QuizCheckServlet")
public class QuizCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession(true);
		String table_name=(String)session.getAttribute("table_name");
		
		response.setContentType("text/html");
		//int no=QuizDatabase.noOfQues(request.getParameter("table_name"));
		int no=QuizDatabase.noOfQues(table_name);
		int i=0;
		
		//Vector<Quiz> quiz=QuizDatabase.getAllQues(request.getParameter("table_name"));
		Vector<Quiz> quiz=QuizDatabase.getAllQues(table_name);
		System.out.println(table_name);
		System.out.println(no);
		HashMap<Integer,String> result=new HashMap<Integer,String>();
		while(i<=no){
		for(Quiz temp: quiz){
			Quiz q =temp;
			
			//while(i<=no){
				result.put(q.getSno(), q.getAnswer());
				i++;
				//System.out.println(result);	
			}
			//System.out.println(result);
		}
		System.out.println(result);
		//System.out.println(result.get(1));
			
	
		Enumeration paramNames=request.getParameterNames();
		int right=0,wrong=0;
		while(paramNames.hasMoreElements()){
			
			//System.out.println("Hello");
			//System.out.println(paramNames.nextElement());
			
			String paramName=(String)paramNames.nextElement();
			String sel=request.getParameter(paramName);
			//System.out.println(paramName);
			//System.out.println(sel);
			//System.out.println(result.get(paramName));
			if(result.get(Integer.parseInt(paramName)).equalsIgnoreCase(sel)){
				++right;
			}
			else{
				
				++wrong;
			}
			
		}
		
		PrintWriter out=response.getWriter();
		out.println("<h2>You have successfully completed the quiz!</h2>");
		out.println("<h2>Total Questions : " +no+"</h2>");
		out.println("<h2>Total Questions Attempted : " +(right+wrong)+"</h2>");
		out.println("<h2>No. of correct Questions : " +right+"</h2>");
		out.println("<h2>No. of Wrong Questions : " +wrong+"</h2>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		int no=QuizDatabase.noOfQues("cquiz");
		int i=0;
		//HttpSession s = request.getSession(true);
		//s.setAttribute("no", no);	
		Vector<Quiz> quiz=QuizDatabase.getAllQues(request.getParameter("table_name"));
		HashMap<Integer,String> result=new HashMap<Integer,String>();
		for(Quiz temp: quiz){
			Quiz q =temp;
			
			while(i<=no){
				result.put(q.getSno(), q.getAnswer());
				
			}
			System.out.println(result);
		}
		
		Enumeration paramNames=request.getParameterNames();
		int right=0,wrong=0;
		while(paramNames.hasMoreElements()){
			
			String paramName=(String)paramNames.nextElement();
			String sel=request.getParameter(paramName);
			if(result.get(paramName).equalsIgnoreCase(sel)){
				right++;
			}
			else{
				
				wrong++;
			}
		}
		
		PrintWriter out=response.getWriter();
		out.println("<h2>You have successfully completed the quiz!</h2>");
		out.println("<h2>Total Questions : " +no+"</h2>");
		out.println("<h2>Total Questions Attempted : " +(right+wrong)+"</h2>");
		out.println("<h2>No. of correct Questions : " +right+"</h2>");
		out.println("<h2>No. of Wrong Questions : " +wrong+"</h2>");
		
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//int no=Integer.parseInt(request.getParameter("no"));
		//Integer no=(Integer)request.getAttribute("no");
		
		//int no=(int)request.getAttribute("no");
		
		//HttpSession session = request.getSession();
		//int no=(int) session.getAttribute("no");	
//		int no=Integer.parseInt(request.getParameter("no"));
//		
//		String table_name = request.getParameter("table_name");
//		System.out.println(table_name);
//		System.out.println(no);
//		int i=0;
//		int correct=0;
//		while(i<=no){
//	
//		String question=request.getParameter("question");
//		String choice=request.getParameter("choice");
//		 
//		if(QuizDatabase.checkAnswer(table_name, question, choice)){
//			
//			correct=correct+1;
//		}
//		
//		++i;
//	
//	}
//		
//		request.setAttribute("msg", "Congratulations!! You have successfully commpleted the quiz");
//		request.setAttribute("max", no);
//		request.setAttribute("correct", correct);
		//response.sendRedirect("QuizSubmit.jsp");
//		RequestDispatcher rd=request.getRequestDispatcher("/QuizSubmit.jsp");
//		rd.forward(request, response);

}
}
