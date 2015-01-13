package ar.com.tragos.servicios.impresion;

import java.io.IOException;



public interface IServicioImpresion {
	public void imprimirTexto(String texto, int idMesa) throws IOException;
}
