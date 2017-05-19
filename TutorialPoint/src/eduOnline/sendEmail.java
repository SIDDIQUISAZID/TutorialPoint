package eduOnline;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sendEmail
 */
@WebServlet("/sendEmail")
public class sendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 String to = request.getParameter("email");//change accordingly
		
		if(UserDatabase.existsEmail(to))		
		

		{  // Sender's email ID needs to be mentioned
	      String from = "sidd.khan69@gmail.com";
	      final String username = "Sidd Khan";//change accordingly
	      final String password = "sharique";//change accordingly

	      // Assuming you are sending email through relay.jangosmtp.net
	      String host = "smtp.gmail.com";

	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");

	      // Get the Session object.
	      Session session = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	         }
	      });

	      try {
	         // Create a default MimeMessage object.
	         Message message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(from));

	         // Set To: header field of the header.
	         message.setRecipients(Message.RecipientType.TO,
	         InternetAddress.parse(to));

	         // Set Subject: header field
	         message.setSubject("Password of eduOnline");

	         // Now set the actual message
	         message.setText("http://localhost:8088/e-LearningProject/ResetPassword.jsp ");

	         // Send message
	         
	         Transport.send(message);
	         
	         System.out.println("Sent message successfully....");
	         RequestDispatcher rs=request.getRequestDispatcher("ForgotPassword.jsp");
	     	request.setAttribute("err", "check your email");
	     	rs.forward(request	, response);
	      } catch (MessagingException e) {
	    	  e.printStackTrace();
	    	  RequestDispatcher rs=request.getRequestDispatcher("ForgotPassword.jsp");
	    		request.setAttribute("err", "An error occured");
	    		rs.forward(request	, response);
	      }
		}
		
		else{
			
			request.setAttribute("err", "Unidentified email");
			RequestDispatcher rs=request.getRequestDispatcher("ForgotPassword.jsp");
			rs.forward(request, response);
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
