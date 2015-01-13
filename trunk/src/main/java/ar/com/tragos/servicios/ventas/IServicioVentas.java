package ar.com.tragos.servicios.ventas;

import java.io.IOException;
import java.util.List;

import ar.com.tragos.entity.Ventas;
import ar.com.tragos.views.TragoView;

public interface IServicioVentas {
	public List<Ventas> getVentas();
	public void registrarVenta(List<TragoView> listaTragos, int idMesa) throws IOException;
	public void cerrarMesa(String idMesa) throws IOException;
}
