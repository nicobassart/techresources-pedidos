package ar.com.tragos.servicios.dao.ventas;

import java.util.Calendar;
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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.entity.Ventas;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;

@Service
public class VentasDao implements IVentasDao{
	
	@PersistenceContext
	EntityManager em;

	@Autowired
	ITragosDao tragos;
	
	@Transactional
	public void insertarVenta(String nombreTrago, int idMesa, float precioCompra, int cantidad) {
		Ventas unaVenta = new Ventas();
		unaVenta.setIdmesa(idMesa);
		unaVenta.setNombreTrago(nombreTrago);
		unaVenta.setPrecio(precioCompra);
		unaVenta.setCantidad(cantidad);
		unaVenta.setDt_venta(Calendar.getInstance().getTime());
		unaVenta.setCobrado(false);
		em.persist(unaVenta);
	}

	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.INTERFACES)
	@SuppressWarnings("unchecked")
	public List<Ventas> getVentas() {
		List<Ventas> resultList = em.createQuery("from Ventas").getResultList();
		return resultList;
	}

	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.INTERFACES)
	@SuppressWarnings("unchecked")
	public List<Ventas> getVentasUnaMesa(int idMesa) {
		
		List<Ventas> ventasMesa= null;
		Query query = em.createQuery("from Ventas as u where u.idmesa = ? and u.cobrado = ?");
		query.setParameter(1, idMesa);
		query.setParameter(2, false);
		try {
			ventasMesa = (List<Ventas>) query.getResultList();
		}
		catch (NoResultException e) {
			System.out.println("No hay resultados para el consumo de la mesa nro " + idMesa);
		}
		return ventasMesa;
	}

	@Bean
	@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.INTERFACES)
	@Transactional
	public void cerrarMesa(int idMesa) {

		Query query = em.createQuery("update  Ventas  u set u.cobrado= :cobra  where u.idmesa = :mesa");
		query.setParameter("cobra", true);
		query.setParameter("mesa", idMesa);
		try {
			query.executeUpdate();
		}
		catch (NoResultException e) {
			System.out.println("No hay resultados para el consumo de la mesa nro " + idMesa);
		}
	}
}
