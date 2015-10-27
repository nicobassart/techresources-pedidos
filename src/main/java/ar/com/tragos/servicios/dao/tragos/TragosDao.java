package ar.com.tragos.servicios.dao.tragos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.entity.Trago;

@Service
@PersistenceContext(unitName="dataBasePpal")
public class TragosDao implements ITragosDao{
	
	@PersistenceContext
	EntityManager em;


	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.INTERFACES)
	@SuppressWarnings("unchecked")
	public List<Trago> getTragos() {
		Query newQuery =em.createQuery("from Trago as trg where trg.activo = ?1");
		newQuery.setParameter(1, true);
		List<Trago> resultList = newQuery.getResultList();
		return resultList;
	}
	
	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.INTERFACES)
	@SuppressWarnings("unchecked")
	public List<Trago> getTragosParametria() {
		Query newQuery =em.createQuery("from Trago");
		return newQuery.getResultList();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Trago unTrago) {
		Trago actualizar = em.find(Trago.class, unTrago.getIdtragos());
		actualizar.setPrecio(unTrago.getPrecio());
		actualizar.setDt_ultimacompra(unTrago.getDt_ultimacompra());
		actualizar.setEstado(unTrago.getEstado());
		actualizar.setActivo(unTrago.isActivo());
		actualizar.setNombre(unTrago.getNombre());
		actualizar.setNombreArchivo(unTrago.getNombreArchivo());
		actualizar.setDescripcion(unTrago.getDescripcion());
		em.merge(actualizar);
	}

	@Bean
	@Scope(value=WebApplicationContext.SCOPE_REQUEST, proxyMode=ScopedProxyMode.INTERFACES)
	public Trago obtenerUnTrago(int idtragos) {
		return em.find(Trago.class, idtragos);
	}
}
