package ar.com.tragos.bean.usuarios;

import javax.inject.Named;

import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;

@Named
@Scope(value=WebApplicationContext.SCOPE_SESSION)
public class LoginBean extends Bean{

	private static final long serialVersionUID = -8725702349262618823L;
	private String userName;
	private String password;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
