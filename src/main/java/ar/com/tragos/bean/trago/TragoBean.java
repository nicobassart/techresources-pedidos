package ar.com.tragos.bean.trago;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;
import ar.com.tragos.entity.Trago;
import ar.com.tragos.servicios.dao.parametria.IParametriaDao;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;
import ar.com.tragos.servicios.decremetos.IServicioDecrementos;
import ar.com.tragos.views.TragoView;

@Named
@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class TragoBean extends Bean {
	private static final long serialVersionUID = -8725702349262618823L;
	private static final String TIEMPO_ACTUALIZACION = "tiempo_actualizacion_pantalla";

	private String idMesera;
	private String idMesa;
	private String email;
	private String telefono;
	private String nombre;
	
	private String rutarelativa;
	
	private List<TragoView> listatragos = new ArrayList<TragoView>();


	@Autowired
	ITragosDao tragos;
    
	
	
	@Autowired
	IParametriaDao parametria;

	@Autowired
	private IServicioDecrementos servicioDecrementos;

	@PostConstruct
	public void inicializar(){
		for (Trago untrago : tragos.getTragos()) {
			TragoView asd = new TragoView();
			asd.setIdtragos(untrago.getIdtragos());
			asd.setNombre(untrago.getNombre());
			asd.setPrecio(untrago.getPrecio());
			asd.setDescripcion(untrago.getDescripcion());
			asd.setArchivo(untrago.getNombre().replace(" ", "_"));
			asd.setNombrearchivo(rutarelativa + untrago.getNombreArchivo());
			// asd.setDt_ultimacompra(Calendar.getInstance().getTime());
			asd.setEstado(untrago.getEstado());
			listatragos.add(asd);
		}
	}
	public List<TragoView> getListatragos() {
		return listatragos;
	}
	public boolean validarLista(){
		for (TragoView untrago : listatragos) {
			if(untrago.getCantidadInt()> 0 )
				return true;
		}
		return false;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getVerificarTime() {
		return parametria.getParametro(TIEMPO_ACTUALIZACION).getValor();
	}

	public void decrementarPrecio() {
		servicioDecrementos.registrarDecrementos();
	}

	public void setListatragos(List<TragoView> listatragos) {
		this.listatragos = listatragos;
	}
	public List<TragoView> getListatragosRigth() {
		return listatragos.subList((listatragos.size()/2)+1, listatragos.size());
	}
	public void setListatragosRigth(List<TragoView>valr) {
	}
	public void setListatragosLeft(List<TragoView>valr) {
	}
	public List<TragoView> getListatragosLeft() {
		this.getListatragos();
		return listatragos.subList(0, listatragos.size()/2);
	}

	public String getIdMesa() {
		return idMesa;
	}

	public int getIdMesaInt() {
		if (idMesa != null)
			return Integer.parseInt(idMesa);
		return 0;
	}

	public void setIdMesa(String idMesa) {
		this.idMesa = idMesa;
	}
	public String getIdMesera() {
		return idMesera;
	}
	public void setIdMesera(String idMesera) {
		this.idMesera = idMesera;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public double getTotalCompra() {
		double total = 0;
		for (TragoView item : listatragos) {
			if(Integer.valueOf(item.getCantidad()) > 0){				
				total += item.getPrecio();
			}
		}
		return total;
	}
	
	public String getTotalCompraString() {
		double total = 0;
		for (TragoView item : listatragos) {
			if(Integer.valueOf(item.getCantidad()) > 0){				
				total += (item.getPrecio() * Integer.parseInt(item.getCantidad())) ;
			}
		}
		return Double.toString(round(total,2));
	}
	
	public static double round(double value, int places) {
	    if (places < 0) throw new IllegalArgumentException();

	    long factor = (long) Math.pow(10, places);
	    value = value * factor;
	    long tmp = Math.round(value);
	    return (double) tmp / factor;
	}
	
	public int cantidadProductos(){
		int total = 0;
		for (TragoView item : listatragos) {
			if(Integer.valueOf(item.getCantidad()) > 0){				
				total += 1;
			}
		}
		return total;
	}
	public String getRutarelativa() {
		return rutarelativa;
	}
	@Value("${rutarelativa}")
	public void setRutarelativa(String rutarelativa) {
		this.rutarelativa = rutarelativa;
	}

	
}
