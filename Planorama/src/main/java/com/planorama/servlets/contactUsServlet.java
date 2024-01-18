package com.planorama.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planorama.models.MessageForm;
import com.planorama.services.*;

/**
 * Servlet implementation class contactUsServlet
 */
@WebServlet("/contactUsServlet")
public class contactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public contactUsServlet() {
        // TODO Auto-generated constructor stub
    }

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

		response.setContentType("text/html");
		
		MessageForm m = new MessageForm();
		
		m.setCusName(request.getParameter("cusName"));
		m.setCusEmail(request.getParameter("cusEmail"));
		m.setSubject(request.getParameter("subject"));
		m.setMessage(request.getParameter("message"));
		
		
		IEventServices iEventServices = new EventServicesImpl();
		iEventServices.addMessage(m);

		
		request.setAttribute("getMessageObject", m);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/success.jsp");
		
		dispatcher.forward(request, response);
	}

}
