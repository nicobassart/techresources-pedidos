package ar.com.tragos.servicios.ventas;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;

import ar.com.tragos.entity.Parametria;
import ar.com.tragos.entity.Trago;
import ar.com.tragos.entity.Ventas;
import ar.com.tragos.enums.Estado;
import ar.com.tragos.servicios.Servicios;
import ar.com.tragos.servicios.dao.clientes.IClientesDao;
import ar.com.tragos.servicios.dao.parametria.IParametriaDao;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;
import ar.com.tragos.servicios.dao.ventas.IVentasDao;
import ar.com.tragos.servicios.impresion.IServicioImpresion;
import ar.com.tragos.views.TragoView;

@Named
@Scope(value=BeanDefinition.SCOPE_PROTOTYPE)
public class ServicioVentas extends Servicios implements IServicioVentas{
	private static final long serialVersionUID = 2783832151283310916L;
	private static final String MONTO_INCREMENTO="monto_incremento";
	private static SimpleDateFormat sdf = null;
	
	@Autowired
	private IServicioImpresion servicioImpresion;
	
	@Autowired
	IParametriaDao parametria;

	@Autowired
	IVentasDao ventas;

	@Autowired
	IClientesDao clientes;
	
	@Autowired
	ITragosDao tragos;

	public List<Ventas> getVentas() {
		return ventas.getVentas();
	}
	
	@PostConstruct
	private void inicializar(){
		sdf= new SimpleDateFormat("dd-MM-yyyy"); 

	}
	/**
	 * Este servicio deberia resolver una venta.
	 * 1- Buscar el incremento que tiene que hacer OK
	 * 2- Ir a buscar el valor del trago a la tabla llevarlos a memoria OK
	 * 2- Incrementar el importe en la tabla de tragos. OK falta grabar
	 * 3- Insertar el registro de la venta en la tabla venta una por cada trago 
	 * (preguntar si tengo que incrementar el precio en cada venta)
	 * @throws IOException 
	 */
	@Override
	public void registrarVenta(List<TragoView> listaTragos, int idMesa) throws IOException {
		float precioCompra=0;
		String textoImpresion="CONSUMO MESA NRO " + idMesa +"\n";
		for (TragoView tragoView : listaTragos) {
			if(tragoView.getCantidad()!=null && tragoView.getCantidadInt() > 0){
				Parametria paramIncremento =  parametria.getParametro(MONTO_INCREMENTO);
				Trago unTrago = tragos.obtenerUnTrago(tragoView.getIdtragos());
				precioCompra = unTrago.getPrecio();
				if(unTrago.isActivo() && !unTrago.getEstado().equals(Estado.QUEBRAR)){
					if(precioCompra < unTrago.getPrecioMax()){
						unTrago.setPrecio(precioCompra + (paramIncremento.getValorFloat() * tragoView.getCantidadInt()));
						unTrago.setDt_ultimacompra(Calendar.getInstance().getTime());
						unTrago.setEstado(Estado.SUBE);
					}else{
						unTrago.setDt_ultimacompra(Calendar.getInstance().getTime());
						unTrago.setEstado(Estado.MAXIMO);
					}
					tragos.update(unTrago);
					
					ventas.insertarVenta(unTrago.getNombre(),idMesa,precioCompra,tragoView.getCantidadInt(),0);
					textoImpresion +=  unTrago.getNombre().toUpperCase() + "  "+ tragoView.getCantidadInt() + "  p/u $"+ unTrago.getPrecio()+"   $" + precioCompra * tragoView.getCantidadInt() +"\n";
				}else{
					textoImpresion +=  unTrago.getNombre().toUpperCase() + "  trago en quiebra \n"; 
				}
			}
		}
		//servicioImpresion.imprimirTexto( "****    CILANTRO BAR    ****  " + sdf.format(Calendar.getInstance().getTime()) +"    ****\n"+ textoImpresion+"\n\n\n\n\n\n\n\n\n",idMesa);
	}
	@Override
	public void cerrarMesa(String idMesa) throws IOException {
		int parseInt = Integer.parseInt(idMesa);
		int consumoTotal=0;
		String textoImpresion="CONSUMO TOTAL MESA NRO " + idMesa +"\n";
		for(Ventas unaVenta: ventas.getVentasUnaMesa(parseInt)){
			textoImpresion +=  unaVenta.getNombreTrago().toUpperCase() + "  "+ unaVenta.getCantidad() + "  p/u $"+ unaVenta.getPrecio()+"   $" + unaVenta.getPrecio() * unaVenta.getCantidad() +"\n";
			consumoTotal +=unaVenta.getPrecio() * unaVenta.getCantidad();
		}
		textoImpresion +=  "CONSUMO TOTAL DE LA MESA:....$" + consumoTotal + "\n";
		servicioImpresion.imprimirTexto( "****    CILANTRO BAR    ****  " + sdf.format(Calendar.getInstance().getTime()) +"    ****\n"+ textoImpresion+"\n\n\n\n\n\n\n\n\n",parseInt );
		ventas.cerrarMesa(parseInt);
	}

	@Override
	public void registrarVentaOnLine(List<TragoView> listatragos,
			int idMesaInt, String email, String telefono) {
		//Vamos a registrar el cliente
		int idCliente = clientes.registrarCliente(email, telefono);
		
		float precioCompra=0;
		String textoImpresion="CONSUMO MESA NRO " + idMesaInt +"\n";
		for (TragoView tragoView : listatragos) {
			if(tragoView.getCantidad()!=null && tragoView.getCantidadInt() > 0){
				Parametria paramIncremento =  parametria.getParametro(MONTO_INCREMENTO);
				Trago unTrago = tragos.obtenerUnTrago(tragoView.getIdtragos());
				precioCompra = unTrago.getPrecio();
				

				
				//Vamos a registrar la venta o el pedido, 
				//quizas no todos los pedidos se transforman en ventas. pero despues lo veremos.
				ventas.insertarVenta(unTrago.getNombre(),idMesaInt,precioCompra,tragoView.getCantidadInt(),idCliente);
				textoImpresion +=  unTrago.getNombre().toUpperCase() + "  "+ tragoView.getCantidadInt() + "  p/u $"+ unTrago.getPrecio()+"   $" + precioCompra * tragoView.getCantidadInt() +"\n";
			}
		}
		//servicioImpresion.imprimirTexto( "****    CILANTRO BAR    ****  " + sdf.format(Calendar.getInstance().getTime()) +"    ****\n"+ textoImpresion+"\n\n\n\n\n\n\n\n\n",idMesa);
		
	}

}
