package ar.com.tragos.servicios.dao.parametria;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.entity.Parametria;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;

@Service
@PersistenceContext(unitName="dataBasePpal")
public class ParametriaDao implements IParametriaDao{
	@PersistenceContext
	EntityManager em;

	@Autowired
	ITragosDao tragos;

	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.INTERFACES)
	public Parametria getParametro(String parametro) {
		Parametria unParametro = null;
		Query query = em.createQuery("from Parametria as pam where pam.nombre = ?1");
		query.setParameter(1, parametro);
		try {
			unParametro = (Parametria) query.getSingleResult();
		}
		catch (NoResultException e) {
			System.out.println("No hay resultados para " + parametro);
		}
		return unParametro;
	}

	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION,  proxyMode=ScopedProxyMode.INTERFACES)
	@SuppressWarnings("unchecked")
	public List<Parametria> getParametria() {
		List<Parametria> resultList = em.createQuery("from Parametria").getResultList();
		return resultList;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void nuevoValor(int idparametria, String valor) {
		Parametria actualizar = em.find(Parametria.class, idparametria);
		actualizar.setValor(valor);
		em.merge(actualizar);
	}
}
