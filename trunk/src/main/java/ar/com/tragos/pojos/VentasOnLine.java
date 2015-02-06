package ar.com.tragos.pojos;

import ar.com.tragos.entity.Ventas;

public class VentasOnLine extends Ventas{
	
	private static final long serialVersionUID = 1L;
	private int idCliente;
	private String email;
	private String telefono;
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


}
