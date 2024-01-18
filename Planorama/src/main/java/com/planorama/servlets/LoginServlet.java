package com.planorama.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.planorama.services.EventServicesImpl;
import com.planorama.util.DBConnectionUtil;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		final Logger log = Logger.getLogger(EventServicesImpl.class.getName());
		Connection connection;
		
//		HttpSession session = request.getSession();
//		RequestDispatcher dispatcher = null;
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			
			String sql = "SELECT cusId FROM customers WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet result = statement.executeQuery();
            
            
            if (result.next()) {
                String userId = result.getString("cusId");
                if (userId.startsWith("C")) {
                    // Set a session attribute upon successful login
                    request.getSession().setAttribute("loggedInUser", username);
                    
//                 // Retrieve the first name of the user from the database
//                    String firstName = result.getString("firstName");
//                    request.getSession().setAttribute("firstName", firstName);
//                    
//                 // Retrieve the last name of the user from the database
//                    String lastName = result.getString("lastName");
//                    request.getSession().setAttribute("lastName", lastName);
//                    
                    
                    response.sendRedirect("dashboard.jsp"); // Direct to dashboard.jsp
                }
            } else {
                // user is not found
                response.sendRedirect("login.jsp");
            }
			
			
		}catch (Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

}
