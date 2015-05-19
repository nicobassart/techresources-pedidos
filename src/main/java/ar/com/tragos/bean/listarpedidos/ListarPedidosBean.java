package ar.com.tragos.bean.listarpedidos;

import java.util.List;

import javax.faces.event.ActionEvent;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;
import ar.com.tragos.entity.Clientes;
import ar.com.tragos.entity.Ventas;
import ar.com.tragos.servicios.dao.clientes.IClientesDao;
import ar.com.tragos.servicios.dao.ventas.IVentasDao;

/**
 * @author studio
 *
 */
@Named
@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class ListarPedidosBean extends Bean {
	private static final long serialVersionUID = -8725702349262618823L;
	private Clientes clienteSeleccionado;
	private String idMesa;
	private int idCliente;
	private float totalConsumos;
	@Autowired
	IVentasDao ventas;
	
	@Autowired
	IClientesDao clientes;
	
	private String comentario;
	private List<Clientes> lista;
	
	private boolean renderDetalle;
	
	
			
	public boolean isRenderDetalle() {
		return renderDetalle;
	}
	public void setRenderDetalle(boolean renderDetalle) {
		this.renderDetalle = renderDetalle;
	}
	public List<Ventas> getDetalleVentas(){
		
		return ventas.getVentasUnCliente(this.getIdCliente()); 
	}
	public List<Clientes> getVentasOnLine() {
//		List<VentasOnLine> lista = ventas.getVentasOnLine();
		if(lista==null) lista = clientes.consultarClientes();
		
//		totalConsumos=0;
//		for (Ventas venta : lista) {
//			totalConsumos+= venta.getPrecio() * venta.getCantidad();
//		}
		return lista;
	}
	public String getIdMesa() {
		return idMesa;
	}

	public void setIdMesa(String idMesa) {
		this.idMesa = idMesa;
	}
	public float getTotalConsumos() {
		return totalConsumos;
	}
	public void setTotalConsumos(float totalConsumos) {
		this.totalConsumos = totalConsumos;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
}
