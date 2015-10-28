package ar.com.tragos.servicios.colas;

import java.io.Serializable;

import javax.annotation.PostConstruct;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.amqp.support.converter.SimpleMessageConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import org.springframework.amqp.core.MessageProperties;

@Service
public class ServicioColas implements IServicioColas,Serializable {
	private static final long serialVersionUID = -8725702349262618823L;
    
	private static final Log log = LogFactory.getLog(ServicioColas.class);  
    private static final String TELEFONO = "telefono";
    private RabbitTemplate template;
	@Autowired
    private ApplicationContext appContext;
	@PostConstruct
	public void constructor(){
		template = appContext.getBean(RabbitTemplate.class);
	}
	@Override
	public void encolarMensaje(String texto, String celular) {

		try {
			MessageProperties messageProperties = new MessageProperties();
			messageProperties.setHeader(TELEFONO, celular);
			
			MessageConverter converter = new SimpleMessageConverter();
			org.springframework.amqp.core.Message message = converter.toMessage(texto, messageProperties);
			
			template.convertAndSend(message);
			
		} catch (Exception e) {
			log.error(e);
		}
	}
}
