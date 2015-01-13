package ar.com.tragos.actions.registro;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.actions.Action;
import ar.com.tragos.bean.registro.PantallaBean;
import ar.com.tragos.servicios.ventas.IServicioVentas;

@Controller
@Scope(value=WebApplicationContext.SCOPE_SESSION)
public class RegistroAction extends Action implements IRegistroAction{

	private static final long serialVersionUID = -2261476298684088030L;

	@Autowired
	private PantallaBean registroBean;
	
	@Autowired
	private IServicioVentas servicioUsuarios;
		
	public String registrarUsuario() {
//		servicioUsuarios.registrarUsuario(registroBean.getNombre(),
//										  registroBean.getApellido(),
//										  registroBean.getUserName(), 
//										  registroBean.getMail()
//										 );
		
		return "success";
		
	}
}
