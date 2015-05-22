package ar.com.tragos.servicios.dao.clientes;

import java.util.List;

import ar.com.tragos.entity.Clientes;


public interface IClientesDao {

	public int registrarCliente(String email, String telefono,String nombre);
	public List<Clientes> consultarClientes();
	public void registrarVentas(int clienteSeleccionado);
	
}
