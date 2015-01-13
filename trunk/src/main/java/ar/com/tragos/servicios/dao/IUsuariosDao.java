package ar.com.tragos.servicios.dao;

import java.util.List;

import ar.com.tragos.entity.Usuario;

public interface IUsuariosDao {
	public List<Usuario> getUsuarios();
	public Usuario getUsuario(String userName);
	public void crearUsuario(String nombre, String apellido, String mail, String userName);

}
