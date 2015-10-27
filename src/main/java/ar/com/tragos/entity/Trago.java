package ar.com.tragos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

import ar.com.tragos.enums.Estado;

@Entity
@Table(name = "tragos")
public class Trago implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private int idtragos;
	private String nombre;
	@Column(length = 4, precision = 2)
	private float precioMin;
	@Column(length = 4, precision = 2)
	private float precioMax;
	@Column(length = 4, precision = 2)
	private float precio;
	@Column
	private String descripcion;
	@Column
	private String nombreArchivo;
	@Enumerated
	private Estado estado;
	@Basic
	private boolean activo;
	private Date dt_ultimacompra;
	
	
	public String getNombreArchivo() {
		return nombreArchivo;
	}

	public void setNombreArchivo(String nombreArchivo) {
		this.nombreArchivo = nombreArchivo;
	}

	public Estado getEstado() {
		return estado;
	}
	
	public void setEstado(Estado estado) {
		this.estado = estado;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getDt_ultimacompra() {
		return dt_ultimacompra;
	}
	public void setDt_ultimacompra(Date dt_ultimacompra) {
		this.dt_ultimacompra = dt_ultimacompra;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	public int getIdtragos() {
		return idtragos;
	}
	public void setIdtragos(int idtragos) {
		this.idtragos = idtragos;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public float getPrecioMin() {
		return precioMin;
	}
	public void setPrecioMin(float precioMin) {
		this.precioMin = precioMin;
	}
	public float getPrecioMax() {
		return precioMax;
	}
	public void setPrecioMax(float precioMax) {
		this.precioMax = precioMax;
	}
	public boolean isActivo() {
		return activo;
	}
	public String getActivoString() {
		return (activo?"Si":"No");
	}
	public void setActivo(boolean activo) {
		this.activo = activo;
	}
	public String toString(){
		return this.getNombre() +" "+ this.getPrecio() + " ";
	}
}
