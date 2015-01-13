package ar.com.tragos.bean.venta;

import javax.inject.Named;

import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import ar.com.tragos.bean.Bean;

@Named
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class VentaBean extends Bean{
	private static final long serialVersionUID = -8725702349262618823L;
	private String idMesa;

	public String getIdMesa() {
		return idMesa;
	}
	public void setIdMesa(String idMesa) {
		this.idMesa = idMesa;
	}

	public int getIdMesaInt() {
		if(idMesa!=null) 
			return Integer.parseInt(idMesa);
		return 0;	
	}
}
