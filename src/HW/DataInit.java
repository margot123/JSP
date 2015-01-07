package HW;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class DataInit
 *
 */
@WebListener
public class DataInit implements HttpSessionListener {

	/**
	 * Default constructor.
	 */
	public DataInit() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		UserDTO userDTO1 = new UserDTO();
		userDTO1.setId(1);
		userDTO1.setLogin("fedge");
		userDTO1.setPwd("jfb");

		UserDTO userDTO2 = new UserDTO();
		userDTO2.setId(2);
		userDTO2.setLogin("gomar");
		userDTO2.setPwd("mlb");

		List<UserDTO> UserDTOs = new ArrayList<UserDTO>();
		UserDTOs.add(userDTO1);
		UserDTOs.add(userDTO2);
		arg0.getSession().setAttribute("UserDTOs", UserDTOs);

	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
	}

}
