package ar.com.tragos.bean.parametria;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;

import org.primefaces.event.RowEditEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;
import ar.com.tragos.entity.Parametria;
import ar.com.tragos.servicios.dao.parametria.IParametriaDao;

@Named
@Scope(value=WebApplicationContext.SCOPE_SESSION)
public class ParametriaBean extends Bean{

	private static final long serialVersionUID = -8725702349262618823L;
	
	@Autowired
	IParametriaDao parametria;
	
	private List<Parametria> listaParametria;
	
	public void setListaParametria(List<Parametria> listaParametria) {
		this.listaParametria = listaParametria;
	}

	public List<Parametria> getListaParametria(){
		if (listaParametria == null) {
			listaParametria  =parametria.getParametria() ;
		}
		return listaParametria;
	}
	

    public void onEdit(RowEditEvent event) {

    	Parametria param = (Parametria) event.getObject();
    	parametria.nuevoValor(param.getIdparametria(),param.getValor());
    	

        FacesMessage msg = new FacesMessage("Parametro Editado", (param).getNombre());  
  
        FacesContext.getCurrentInstance().addMessage(null, msg);  
    }  
      
    public void onCancel(RowEditEvent event) {  
        FacesMessage msg = new FacesMessage("Parametro Cancelado", ((Parametria) event.getObject()).getNombre());  
  
        FacesContext.getCurrentInstance().addMessage(null, msg);  
    } 
	
}
