package ar.com.tragos.servicios.impresion;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;

import ar.com.tragos.entity.Parametria;
import ar.com.tragos.servicios.Servicios;
import ar.com.tragos.servicios.dao.parametria.IParametriaDao;

@Named
@Scope(value = BeanDefinition.SCOPE_SINGLETON)
public class ServicioImpresion extends Servicios implements IServicioImpresion {
	private static final String IMPRESORA = "impresora_";
	private static final String IMPRESORAS_ACTIVAS = "impresoras_activas";
	private static final long serialVersionUID = 2783832151283310916L;
	private List<DataImpresora> listaImpresoras;


	@Autowired
	IParametriaDao parametria;
	
	@PostConstruct
	public void constructor(){
		listaImpresoras= new ArrayList<DataImpresora>();
		for (int cont=1;cont<=  parametria.getParametro(IMPRESORAS_ACTIVAS).getValorInt();cont++) {
			DataImpresora impre= new DataImpresora();
			Parametria param = parametria.getParametro(IMPRESORA+ cont);
			impre.setPuerto(param.getValor().split("-")[0]);
			impre.setInicioMesa(Integer.parseInt(param.getValor().split("-")[1]));
			impre.setFinMesa(Integer.parseInt(param.getValor().split("-")[2]));
			listaImpresoras.add(impre);
		} 
	}
	@Override
	public void imprimirTexto(String texto,int idMesa) throws IOException {
		//Tendria que buscar la impresora en la que tiene que imprimir
		//Enviarle la impresion.
		for (DataImpresora unaImpre : listaImpresoras) {
			if(unaImpre.imprimeEnEstaImpresora(idMesa)){
				unaImpre.imprimir(texto,idMesa);
				return;
			}
		}
		System.out.println("Impresora no encontrada");
	}
}