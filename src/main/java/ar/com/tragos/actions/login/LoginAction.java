package ar.com.tragos.actions.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.actions.Action;
import ar.com.tragos.bean.usuarios.LoginBean;
import ar.com.tragos.entity.Usuario;
import ar.com.tragos.servicios.ventas.IServicioVentas;

@Controller
@Scope(value=WebApplicationContext.SCOPE_SESSION)
public class LoginAction extends Action implements ILoginAction{

	private static final long serialVersionUID = 2339069363621782936L;

	Usuario usuario;
	
	@Autowired
	LoginBean loginBean;
		
	@Autowired
	IServicioVentas servicioUsuarios;
	
	public String login() {
		getDatosUsuario(loginBean.getUserName());
		return "success";
	}
	
	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION)
	@Lazy
	public Usuario getDatosUsuario(String userName) {
		//this.usuario = servicioUsuarios.getUsuario(loginBean.getUserName());
		return this.usuario;
		
	}
	
}
