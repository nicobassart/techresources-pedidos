package ar.com.tragos.bean.trago;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
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

	
}
