package ar.com.tragos.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "parametria")
public class Parametria implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int idparametria;

	private String nombre;
	private String valor;
	private String descripcion;
	public int getIdparametria() {
		return idparametria;
	}
	public void setIdparametria(int idparametria) {
		this.idparametria = idparametria;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getValor() {
		return valor;
	}
	public void setValor(String valor) {
		this.valor = valor;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getValorInt() {
		if(valor!=null) 
			return Integer.parseInt(valor);
		return 0;
	}
	public float getValorFloat() {
		if(valor!=null) 
			return Float.parseFloat(valor);
		return 0;
	}

}
