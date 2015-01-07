package HW;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("WEB-INF/Login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String login = request.getParameter("loginInput");
		String pwd = request.getParameter("pwdInput");
		List<UserDTO> userDTOs = (List<UserDTO>)request.getSession().getAttribute("UserDTOs");
				
		UserDTO securedUser = null;
				for (UserDTO user : userDTOs) {
					if (user.getLogin().compareTo(login) == 0
							&& user.getPwd().compareTo(pwd)==0){
						securedUser= user;
					}
					
				}
				if (securedUser!=null) {
					request.getSession().setAttribute("connectedUser", securedUser);
				}else{System.out.println("Echec de connexion, trouvez le bon mot de passe ! ;)");
				request.setAttribute("mainErrorMessage", "mauvaise connexion");
				request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);}
	}

}
