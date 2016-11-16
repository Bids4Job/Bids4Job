package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.SimpleUser;
import service.SimpleUserService;

/**
 * Servlet implementation class RegisterSimpleController
 */
@WebServlet("/register_simple")
public class RegisterSimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Parameter names
	private static final String FIRST_NAME = "firstname";
	private static final String LAST_NAME = "surname";
	private static final String EMAIL = "email";
	private static final String USERNAME = "uname";
	private static final String PASSWORD = "upass";
	private static final String LOCATION = "location";

	// A service for SimpleUser database operations
	private SimpleUserService simpleUserService;

	// Dispatchers for error and registered pages
	RequestDispatcher errorDispatcher;
	RequestDispatcher registeredDispatcher;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterSimpleController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() {
		// Define RequestDispatcher object to forward any errors
		errorDispatcher = getServletContext().getRequestDispatcher("/simple_user_error_printer.jsp");

		// Define RequestDispatcher object to forward if data are correct and
		// successfully stored in database
		registeredDispatcher = getServletContext().getRequestDispatcher("/registered.jsp");

		// Instantiate a SimpleUser service object
		simpleUserService = new SimpleUserService();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Read parameters from request
		String username = request.getParameter(USERNAME);
		String password = request.getParameter(PASSWORD);
		String email = request.getParameter(EMAIL);
		String firstName = request.getParameter(FIRST_NAME);
		String lastName = request.getParameter(LAST_NAME);
		String location = request.getParameter(LOCATION);

		// Create the SimpleUser to be stored
		SimpleUser simpleUser = new SimpleUser().setFirstName(firstName).setLastName(lastName).setLocation(location)
				.setUsername(username).setPassword(password).setEmail(email);

		try {
			simpleUser = simpleUserService.create(simpleUser);
		} catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", e.getMessage());
			errorDispatcher.forward(request, response);
		}

		// Set SimpleUser to request
		request.setAttribute("simpleUser", simpleUser);
		registeredDispatcher.forward(request, response);
	}

}