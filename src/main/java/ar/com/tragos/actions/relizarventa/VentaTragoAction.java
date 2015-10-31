package ar.com.tragos.actions.relizarventa;

import javax.faces.application.FacesMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.actions.Action;
import ar.com.tragos.bean.listarpedidos.ListarPedidosBean;
import ar.com.tragos.bean.trago.TragoBean;
import ar.com.tragos.entity.Clientes;
import ar.com.tragos.servicios.colas.IServicioColas;
import ar.com.tragos.servicios.dao.clientes.IClientesDao;
import ar.com.tragos.servicios.mail.IServicioMail;
import ar.com.tragos.servicios.ventas.IServicioVentas;
import ar.com.tragos.views.TragoView;

@Controller
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class VentaTragoAction extends Action implements IVentaTragoAction{

	private static final long serialVersionUID = -2261476298684088030L;

	@Autowired
	private TragoBean tragoBean;
	
	@Autowired
	private ListarPedidosBean listarPedidosBean;
	
	@Autowired
	private IServicioVentas servicioVentas;

	@Autowired
	private IServicioMail servicioMail;
		
    @Autowired
    private IServicioColas servicioColas;
    
    @Autowired
    private IClientesDao clienteDao;

	
	public String realizarVenta() {
		
		if(!tragoBean.validarLista()){
	        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_WARN, "Validación",  "Debe seleccionar algun trago para vender!!");  
        
	      //  FacesContext.getCurrentInstance().addMessage(null, message);

	        return "error";
		}
		
		StringBuffer sBuffer = new StringBuffer("Se ha solicitado con éxito su pedido: \n");
		for (TragoView comida : tragoBean.getListatragos()) {
			if(Integer.valueOf(comida.getCantidad())>0){				
				sBuffer.append("\n");
				sBuffer.append(comida.getCantidad() + "  " + comida.getNombre() + ": " + comida.getDescripcion());
				sBuffer.append("\n");
			}
		}
		sBuffer.append("\n Usted será informado al momento en que su pedido esté listo para ser retirado. \n\n Muchas Gracias \n\n Comidas Candy");
			
		servicioMail.send(tragoBean.getEmail(), "Solicitud de Pedido", sBuffer.toString());
		servicioVentas.registrarVentaOnLine(tragoBean.getListatragos(),tragoBean.getIdMesaInt(),tragoBean.getEmail(),tragoBean.getTelefono(),tragoBean.getNombre());

		for (TragoView comida : tragoBean.getListatragos()) {
			comida.setCantidad("0");
		}
		
		return "success"+tragoBean.getIdMesera();
	}
	
	public String realizarRechazo() {
		System.out.println("Probando");
		if(!tragoBean.validarLista()){
	        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_WARN, "Validación",  "Debe seleccionar algun trago para vender!!");  
	        return "error";
		}
			servicioMail.send(tragoBean.getEmail(), "Rechazo de Pedido", "Comentario: " + listarPedidosBean.getComentario());
			servicioVentas.registrarVentaOnLine(tragoBean.getListatragos(),tragoBean.getIdMesaInt(),tragoBean.getEmail(),tragoBean.getTelefono(),tragoBean.getNombre());

		return "success"+tragoBean.getIdMesera();
	}
	public void agregarTragoCarrito() {
		System.out.println("Vamos a agregar lo comprado al carrito");
	}
	public void confirmarVenta() {

		Clientes cliente = clienteDao.getClienteById(listarPedidosBean.getIdCliente());
		
		servicioVentas.confirmarVenta(listarPedidosBean.getIdCliente());
		
		servicioColas.encolarMensaje("Su pedido está listo para ser retirado",cliente.getTelefono());
	}
}
