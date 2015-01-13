package ar.com.tragos.servicios.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.entity.Usuario;

@Service
public class UsuariosDao implements IUsuariosDao{
	
	@PersistenceContext
	EntityManager em;

	
	@SuppressWarnings("unchecked")
	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION,
		   proxyMode=ScopedProxyMode.INTERFACES)
	public List<Usuario> getUsuarios() {
		List<Usuario> resultList = em.createQuery("from Usuario").getResultList();
		return resultList;
	}
	
	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION,
		   proxyMode=ScopedProxyMode.INTERFACES)
	public Usuario getUsuario(String userName) {
		Usuario usuario = null;
		Query query = em.createQuery("from Usuario as u where u.userName = ?1");
		query.setParameter(1, userName);
		try {
			usuario = (Usuario) query.getSingleResult();
		}
		catch (NoResultException e) {
			System.out.println("No hay resultados para " + userName);
		}
		
		return usuario;
	}
	
	@Transactional
	public void crearUsuario(String nombre, String apellido, String mail, String userName) {
		Usuario usuario = null;
		Query query = em.createQuery("from Usuario as u where u.userName = ?1");
		query.setParameter(1, userName);
		try {
			usuario = (Usuario) query.getSingleResult();
			System.out.println("usuario existente");
		}
		catch (NoResultException e) {
			usuario = new Usuario();
			usuario.setApellido(apellido);
			usuario.setNombre(nombre);
			usuario.setMail(mail);
			usuario.setUserName(userName);
			em.persist(usuario);
		}
	}
}
