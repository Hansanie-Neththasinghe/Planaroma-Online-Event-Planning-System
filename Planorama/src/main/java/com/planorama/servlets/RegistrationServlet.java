package com.planorama.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.planorama.models.Customer;
import com.planorama.services.EventServicesImpl;
import com.planorama.services.IEventServices;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
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
		
		//Get the user entered details
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String phoneNumber = request.getParameter("phoneNumber");
		
		
		response.setContentType("text/html");
		
		Customer cus = new Customer();
//		
//		cus.setFirstName(request.getParameter("firstName"));
//		cus.setLastName(request.getParameter("lastName"));
//		cus.setEmail(request.getParameter("email"));
//		cus.setPhoneNumber(request.getParameter("phoneNumber"));
//		//cus.setPassword(request.getParameter("password"));
//		
//		
//		String password = request.getParameter("password");
//		String confirmPassword = request.getParameter("confirmPassword");
		
		if(password != null && password.equals(confirmPassword)) {
			cus.setFirstName(firstName);
			cus.setLastName(lastName);
			cus.setEmail(email);
			cus.setPhoneNumber(phoneNumber);
			cus.setPassword(password);
		}else {
			// Passwords do not match
		    // Redirect the user back to the register.jsp page with an error message
		    //response.sendRedirect("register.jsp?error=Passwords do not match");
			
			//=====================================================================================

		    // Alternatively,set an attribute to display an error message on the current page
		    //request.setAttribute("error", "Passwords do not match");
		    // Then forward the request to the register.jsp page
		    //request.getRequestDispatcher("register.jsp").forward(request, response);
			
			//=====================================================================================
			
			// Passwords do not match
	        // Set an error message and display it on the same page
//	        request.setAttribute("errorMessage", "Passwords do not match!");
//	        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp"); 
//	        dispatcher.forward(request, response);
			
			//=====================================================================================

			// Passwords do not match
	        // Set an error message and forward back to the form page
			request.setAttribute("errorMessage", "Passwords do not match!");
	        request.setAttribute("firstName", firstName);
	        request.setAttribute("lastName", lastName);
	        request.setAttribute("email", email);
	        request.setAttribute("phoneNumber", phoneNumber);
	        request.setAttribute("password", password);
	        request.setAttribute("confirmPassword", confirmPassword);
	        
	        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
	        dispatcher.forward(request, response);
		}
		
		
		//create an object from servicesImpl class and send those details to the db table
		IEventServices iEventServices = new EventServicesImpl();
		iEventServices.addCustomer(cus);

		request.setAttribute("getCustomerObject", cus);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/success.jsp");
		
		dispatcher.forward(request, response);
		
		
		
	}

}
