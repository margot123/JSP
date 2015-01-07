package HW;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cervelette2
 */
@WebServlet("/Cervelette2")
public class Cervelette2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Cervelette2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List<HW.UserDTO> UserDTOs = (List) request.getSession().getAttribute(
				"UserDTOs");
		String JSPsuivante = null;

		// create
		
		if (request.getParameter("creation") != null) {
			
			JSPsuivante = "WEB-INF/Create.jsp";
			
		}
		
		// read
		if (request.getParameter("unid") != null) {
			int id = Integer.parseInt(request.getParameter("unid"));

			for (UserDTO user : UserDTOs) {
				if (user.getId() == id) {
					request.getSession().setAttribute("nom", user.getLogin());
					request.getSession().setAttribute("mdp", user.getPwd());
				}

			}JSPsuivante = "WEB-INF/UserForm.jsp";
		}

		// update
		
if (request.getParameter("modification") != null) {
	int id4 = Integer.parseInt(request.getParameter("modification"));

	for (UserDTO user : UserDTOs) {
		if (user.getId() == id4) {
			request.getSession().setAttribute("nom", user.getLogin());
			request.getSession().setAttribute("mdp", user.getPwd());
		}
			
			
		}JSPsuivante = "WEB-INF/Create.jsp";
		
}
		// delete
		if (request.getParameter("suppression") != null) {

			int id2 = Integer.parseInt(request.getParameter("suppression"));
			UserDTO userToDelete=new UserDTO();
			userToDelete=null;
			for (UserDTO user : UserDTOs) {
				if (user.getId() == id2) {
					userToDelete=user;}}
				if (userToDelete!=null){	
			
					UserDTOs.remove(userToDelete);
					//request.getSession().removeAttribute("UserDTO".concat(user.getId()));
					//request.getSession().removeAttribute("mdp");
				}
				JSPsuivante = "WEB-INF/HelloWorld.jsp";

		}

		
		RequestDispatcher dispatcher = request
				.getRequestDispatcher(JSPsuivante);
		dispatcher.forward(request, response);

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("nouveaunom");
		String pwd = request.getParameter("nouveaupwd");
		UserDTO userToAdd = new UserDTO();
		List<HW.UserDTO> UserDTOs = (List) request.getSession().getAttribute(
				"UserDTOs");
		
		
		
		int identifiant = UserDTOs.size()+1;
		userToAdd.setId(identifiant);
		userToAdd.setLogin(login);
		userToAdd.setPwd(pwd);
		
		UserDTOs.add(userToAdd);
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/HelloWorld.jsp");
		dispatcher.forward(request, response);

	}
}
