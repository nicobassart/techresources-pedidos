package ar.com.tragos.servicios.dao.ventas;

import java.util.List;

import ar.com.tragos.entity.Ventas;
import ar.com.tragos.pojos.VentasOnLine;

public interface IVentasDao {
	public List<Ventas> getVentas();
	public void insertarVenta(String nombreTrago, int idMesa, float precioCompra, int cantidad,int idCliente);
	public List<Ventas> getVentasUnaMesa(int idMesa);
	public List<Ventas> getVentasUnCliente(int idCliente);
	public void cerrarMesa(int idMesa);
	public List<VentasOnLine> getVentasOnLine();
}
