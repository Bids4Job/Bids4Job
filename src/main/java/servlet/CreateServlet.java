package servlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Task;
import service.TaskService;

/**
 * Servlet implementation class CreateServlet
 *
 * @author Dimitris
 */
@WebServlet("/create")
public class CreateServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServlet() {
        super();
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/Create.jsp").forward(request, response);
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fieldOfWork = request.getParameter("fieldOfWork");
        /**
         * For the purposes of this personal project we will assume that all the
         * new Tasks are made by the simple user with Id 1.
         */
        TaskService mService = new TaskService();
        String date;
        date = request.getParameter("date");
        Timestamp deadline;
        deadline = Timestamp.valueOf(date + " " + "23:59:59");
        Task task = new Task().setDeadline(deadline).setSimpleUserId(1)
                .setWorkField(fieldOfWork).setDescription("tararararar").setActive_task(1);

        Task task1;
        task1 = mService.create(task);
        request.setAttribute("newTask", task1);
        request.getRequestDispatcher("/Index.jsp").forward(request, response);
    }
}
