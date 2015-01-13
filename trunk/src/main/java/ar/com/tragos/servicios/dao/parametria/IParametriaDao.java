package ar.com.tragos.servicios.dao.parametria;

import java.util.List;

import ar.com.tragos.entity.Parametria;

public interface IParametriaDao {
	public Parametria getParametro(String parametro);
	public List<Parametria> getParametria();
	public void nuevoValor(int idparametria, String valor);
}
