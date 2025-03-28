package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateFeedbackServlet")
public class UpdateFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fno = request.getParameter("fno");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		String question = request.getParameter("question");
		
		boolean isTrue;
		
		isTrue = feedbackDBUtil.updatefeedback(fno, name, email, subject, message, question);
		
		if(isTrue == true) {
			List<feedback> feedDetails = feedbackDBUtil.getfeedbackDetails(fno);
			request.setAttribute("feedDetails", feedDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userfeedback.jsp");
			dis.forward(request, response);
		}
		else {
			List<feedback> feedDetails = feedbackDBUtil.getfeedbackDetails(fno);
			request.setAttribute("feedDetails", feedDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userfeedback.jsp");
			dis.forward(request, response);
		}
	}
}
