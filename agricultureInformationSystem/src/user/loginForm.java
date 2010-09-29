package user;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class loginForm extends ActionForm{
	private String username;
	private String password;
	public String getUsername() { 
		return username; 
	}
	public void setUsername(String username) { 
		this.username = username; 
	}
	public String getPassword() { 
		return password; 
	}
	public void setPassword(String password) { 
		this.password = password; 
	}
	public void reset(ActionMapping mapping,
			HttpServletRequest request) {
			}

}
