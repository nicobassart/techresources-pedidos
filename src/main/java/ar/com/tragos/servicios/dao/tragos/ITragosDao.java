package ar.com.tragos.servicios.dao.tragos;

import java.util.List;

import ar.com.tragos.entity.Trago;

public interface ITragosDao {
	public List<Trago> getTragos();
	public List<Trago> getTragosParametria();
	public void update(Trago unTrago);
	public Trago obtenerUnTrago(int idtragos);
}
