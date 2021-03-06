package service;

import java.sql.SQLException;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;

import dao.SimpleUserDAO;
import domain.SimpleUser;

public class SimpleUserService {

	private SimpleUserDAO simpleUserDAO = new SimpleUserDAO();

	/**
	 * Finds the Simple User with the given ID.
	 * 
	 * @param simpleUserID
	 * @return The SimpleUser with the specified ID
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public SimpleUser findOne(int simpleUserID)
			throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
		return simpleUserDAO.findOne(simpleUserID);
	}

	/**
	 * Find all existing Simple Users in the database.
	 *
	 * @return A list with all SimpleUsers
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public List<SimpleUser> findAll()
			throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
		return simpleUserDAO.findAll();
	}

	/**
	 * Add a new Simple User in the database.
	 * 
	 * @param simpleUser
	 * @return The SimpleUser object that was added in database
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public SimpleUser create(SimpleUser simpleUser)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		// Set the account_active attribute always to true while a new
		// SimpleUser is created
		simpleUser.setActiveAccount(true);
		// Hash the password
		simpleUser.setPassword(BCrypt.hashpw(simpleUser.getPassword(), BCrypt.gensalt(12)));
		return simpleUserDAO.create(simpleUser);
	}

	/**
	 * Update a Simple User in database based on ID.
	 * 
	 * @param simpleUser
	 * @return True if the update operation was succeeded, else false
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public boolean update(SimpleUser simpleUser)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		return simpleUserDAO.update(simpleUser);
	}

	/**
	 * Delete a SimpleUser from database based on ID.
	 * 
	 * @param simpleUser
	 * @return True if the delete operation was succeeded, else false
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public boolean delete(SimpleUser simpleUser)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		return simpleUserDAO.delete(simpleUser);
	}

	/**
	 * Find Simple Users based on given location.
	 * 
	 * @param location
	 * @return A list with SimpleUsers from the specified location
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public List<SimpleUser> findByLocation(String location)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		return simpleUserDAO.findByLocation(location);
	}

	/**
	 * Find Simple Users that have unsigned Task.
	 * 
	 * @param location
	 * @return A list with SimpleUsers that have at least one unsigned Task
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public List<SimpleUser> findWithUnsignedTask()
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		return simpleUserDAO.findWithUnsignedTask();
	}

	/**
	 * Finds Simple Users based on given account status.
	 * 
	 * @param active_account
	 *            Represents if the account is active or not
	 * @return A List of SimpleUsers that have the specified account status
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public List<SimpleUser> findByActiveAccount(boolean active_account)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		return simpleUserDAO.findByActiveAccount(active_account);
	}

	/**
	 * Finds the Simple User with the given email and password.
	 * 
	 * @param email
	 *            the email of the user
	 * @param password
	 *            the password of the user
	 * @return The SimpleUser with the specified ID
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public SimpleUser authenticateByEmail(String email, String password)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		SimpleUser simpleUser = simpleUserDAO.findByEmail(email);
		return (simpleUser != null && BCrypt.checkpw(password, simpleUser.getPassword())
				&& simpleUser.getActiveAccount()) ? simpleUser : null;
	}

	/**
	 * Finds the Simple User with the given username and password.
	 * 
	 * @param username
	 *            the username of the user
	 * @param password
	 *            the password of the user
	 * @return
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public SimpleUser authenticateByUsername(String username, String password)
			throws IllegalAccessException, InstantiationException, ClassNotFoundException, SQLException {
		SimpleUser simpleUser = simpleUserDAO.findByUsername(username);
		return (simpleUser != null && BCrypt.checkpw(password, simpleUser.getPassword())
				&& simpleUser.getActiveAccount()) ? simpleUser : null;
	}

	public boolean exist(String name, String value)
			throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
		return simpleUserDAO.exist(name, value);
	}
}
