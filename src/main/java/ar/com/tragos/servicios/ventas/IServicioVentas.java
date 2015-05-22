package ar.com.tragos.servicios.ventas;

import java.io.IOException;
import java.util.List;

import ar.com.tragos.entity.Clientes;
import ar.com.tragos.entity.Ventas;
import ar.com.tragos.views.TragoView;

public interface IServicioVentas {
	public List<Ventas> getVentas();
	public void registrarVenta(List<TragoView> listaTragos, int idMesa) throws IOException;
	public void cerrarMesa(String idMesa) throws IOException;
	public void registrarVentaOnLine(List<TragoView> listatragos,
			int idMesaInt, String email, String telefono,String nombre);
	public void confirmarVenta(int clienteSeleccionado);
}
