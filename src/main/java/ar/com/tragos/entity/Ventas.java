package ar.com.tragos.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ventas")
public class Ventas implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int idventas;

	private int idmesa;
	private int cantidad;
	@Column(length = 4, precision = 2)
	private float precio;
	private Date dt_venta;
	private String nombreTrago;
	@Basic
	private boolean cobrado;
	
	private int idCliente;
	
	
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public boolean isCobrado() {
		return cobrado;
	}
	public void setCobrado(boolean cobrado) {
		this.cobrado = cobrado;
	}
	public String getNombreTrago() {
		return nombreTrago;
	}
	public void setNombreTrago(String nombreTrago) {
		this.nombreTrago = nombreTrago;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public int getIdmesa() {
		return idmesa;
	}
	public void setIdmesa(int idmesa) {
		this.idmesa = idmesa;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	public Date getDt_venta() {
		return dt_venta;
	}
	public void setDt_venta(Date dt_venta) {
		this.dt_venta = dt_venta;
	}
}
