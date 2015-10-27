package ar.com.tragos.views;

import ar.com.tragos.entity.Trago;

public class TragoView extends Trago{
	private static final long serialVersionUID = 1L;

	private String cantidad="0";
	private String descripcion;
	private String archivo;
	private String nombrearchivo;
	

	public String getArchivo() {
		return archivo;
	}
	public void setArchivo(String archivo) {
		this.archivo = archivo;
	}
	
	
	public String getCantidad() {
		return cantidad;
	}
	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}
	public void  addCantidad(){
		System.out.println("Prueba");
	}
	public int getCantidadInt() {
		if(cantidad!=null && !"".equals(cantidad)) 
			return Integer.parseInt(cantidad);
		return 0;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getNombrearchivo() {
		return nombrearchivo;
	}
	public void setNombrearchivo(String nombrearchivo) {
		this.nombrearchivo = nombrearchivo;
	}
	

}
