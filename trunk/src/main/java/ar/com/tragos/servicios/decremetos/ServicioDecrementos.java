package ar.com.tragos.servicios.decremetos;

import java.util.Calendar;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;

import ar.com.tragos.entity.Parametria;
import ar.com.tragos.entity.Trago;
import ar.com.tragos.enums.Estado;
import ar.com.tragos.servicios.Servicios;
import ar.com.tragos.servicios.dao.parametria.IParametriaDao;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;

@Named
@Scope(value=BeanDefinition.SCOPE_PROTOTYPE)
public class ServicioDecrementos extends Servicios implements IServicioDecrementos{
	

	private static final long serialVersionUID = 2783832151283310916L;
	private static final String MONTO_DECREMENTO = "monto_decremento";
	private static final String TIEMPO_MIN_DECREMENTO = "tiempo_min_decremento";
	private static final String TIEMPO_MIN_IGUAL = "tiempo_min_igual";
	
	@Autowired
	IParametriaDao parametria;

	
	@Autowired
	ITragosDao tragos;
	
	@Override
	public void registrarDecrementos() {
		Parametria  paramMont = parametria.getParametro(MONTO_DECREMENTO);
		Parametria  paramTime = parametria.getParametro(TIEMPO_MIN_DECREMENTO);
		Parametria  paramTimeIgual = parametria.getParametro(TIEMPO_MIN_IGUAL);
		
		for (Trago untrago : tragos.getTragos()) {
			long seg1 = untrago.getDt_ultimacompra().getTime()/1000;
			long seg2 = Calendar.getInstance().getTimeInMillis() /1000;

			if(untrago.isActivo() && !untrago.getEstado().equals(Estado.QUEBRAR)){

				if( seg2 - seg1  > paramTime.getValorInt()){
					//Se deberia decrementar el valor y modificar el estado
					//Tambien controlar el minimo
					if(untrago.getPrecio() > untrago.getPrecioMin()){
						Trago tragoAnt = tragos.obtenerUnTrago(untrago.getIdtragos());
						untrago.setPrecio(tragoAnt.getPrecio() - paramMont.getValorFloat());
						untrago.setEstado(Estado.BAJA);
						tragos.update(untrago);
					}else{
						untrago.setEstado(Estado.MINIMO);
						tragos.update(untrago);
					}
				}
				if( seg2 - seg1  < paramTimeIgual.getValorInt()){
					untrago.setEstado(Estado.IGUAL);
					tragos.update(untrago);
				}
			}
		}
	}

}
