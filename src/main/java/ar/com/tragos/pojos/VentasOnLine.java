package ar.com.tragos.pojos;

import ar.com.tragos.entity.Clientes;
import ar.com.tragos.entity.Ventas;

public class VentasOnLine {
	
	private Ventas ventas;
	private Clientes clientes;
	
	
	public Ventas getVentas() {
		return ventas;
	}
	public void setVentas(Ventas ventas) {
		this.ventas = ventas;
	}
	public Clientes getClientes() {
		return clientes;
	}
	public void setClientes(Clientes clientes) {
		this.clientes = clientes;
	}
}
