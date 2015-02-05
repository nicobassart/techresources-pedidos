package ar.com.tragos.actions.relizarventa;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.actions.Action;
import ar.com.tragos.bean.trago.TragoBean;
import ar.com.tragos.servicios.mail.IServicioMail;
import ar.com.tragos.servicios.ventas.IServicioVentas;

@Controller
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class VentaTragoAction extends Action implements IVentaTragoAction{

	private static final long serialVersionUID = -2261476298684088030L;

	@Autowired
	private TragoBean tragoBean;
	
	@Autowired
	private IServicioVentas servicioVentas;

	@Autowired
	private IServicioMail servicioMail;
		
	public String realizarVenta() {
		if(!tragoBean.validarLista()){
	        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_WARN, "Validación",  "Debe seleccionar algun trago para vender!!");  
        
	        FacesContext.getCurrentInstance().addMessage(null, message);

	        return "error";
		}
		
//		try {
//			//Servicio para resolver el envio de emial o SMS.
//			//servicioInformar.informarVenta();

			servicioMail.send(tragoBean.getEmail(), "Tu hermana", "Estamos mejorando el servicio");
			servicioVentas.registrarVentaOnLine(tragoBean.getListatragos(),tragoBean.getIdMesaInt(),tragoBean.getEmail(),tragoBean.getTelefono());
//		} catch (IOException e) {
//	        FacesMessage msg = new FacesMessage("Ocurrio un error",e.toString());  
//	        FacesContext.getCurrentInstance().addMessage(null, msg);  
//	        return "";
//		}

		return "success"+tragoBean.getIdMesera();
	}

	public void agregarTragoCarrito() {
		System.out.println("Vamos a agregar lo comprado al carrito");
	}
}
