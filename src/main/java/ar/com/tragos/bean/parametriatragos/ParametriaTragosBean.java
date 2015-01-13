package ar.com.tragos.bean.parametriatragos;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;

import org.primefaces.event.RowEditEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;
import ar.com.tragos.entity.Trago;
import ar.com.tragos.enums.Estado;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;

@Named
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class ParametriaTragosBean extends Bean{
	private static final long serialVersionUID = 1L;

	@Autowired
	ITragosDao tragos;
	
	private List<Trago> listaTragos;

	private List<Estado> estados;  
	
	
	@PostConstruct
	public void postConstructor(){
		listaTragos = tragos.getTragosParametria();
		estados = new ArrayList<Estado>();
		for(Estado estado: Estado.values()){
			estados.add(estado);	
		}
		
	}
	

	public List<Estado> getEstados() {
		return estados;
	}


	public void setEstados(List<Estado> estados) {
		this.estados = estados;
	}


	public List<Trago> getListaTragos() {
		return listaTragos;
	}



	public void setListaTragos(List<Trago> listaTragos) {
		this.listaTragos = listaTragos;
	}



	public void onEdit(RowEditEvent event) {

		Trago unTrago = (Trago) event.getObject();
		tragos.update(unTrago);
    	

        FacesMessage msg = new FacesMessage("Parametro Editado", unTrago.getNombre());  
  
        FacesContext.getCurrentInstance().addMessage(null, msg);  
    }  
      
    public void onCancel(RowEditEvent event) {  
        FacesMessage msg = new FacesMessage("Parametro Cancelado", ((Trago) event.getObject()).getNombre());  
  
        FacesContext.getCurrentInstance().addMessage(null, msg);  
    } 
	
}
