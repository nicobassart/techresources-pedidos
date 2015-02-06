package ar.com.tragos.bean.listarpedidos;

import java.util.List;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;
import ar.com.tragos.pojos.VentasOnLine;
import ar.com.tragos.servicios.dao.ventas.IVentasDao;

@Named
@Scope(value = WebApplicationContext.SCOPE_SESSION)
public class ListarPedidosBean extends Bean {
	private static final long serialVersionUID = -8725702349262618823L;

	private String idMesa;
	private float totalConsumos;
	@Autowired
	IVentasDao ventas;

	public List<VentasOnLine> getVentasOnLine() {
		List<VentasOnLine> lista = ventas.getVentasOnLine();
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
	
}
