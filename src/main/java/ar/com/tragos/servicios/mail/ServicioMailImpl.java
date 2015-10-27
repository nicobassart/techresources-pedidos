package ar.com.tragos.servicios.mail;  
  
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.inject.Named;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
  
@Named
@Scope(value=BeanDefinition.SCOPE_PROTOTYPE)
public class ServicioMailImpl implements IServicioMail {  
  
    private static final Log log = LogFactory.getLog(ServicioMailImpl.class);  
  

    public void send(String to, String subject, String text) {
		final Properties props = new Properties();
		InputStream in = getClass().getResourceAsStream("/mail.properties");
		try {
			props.load(in);
			in.close();
		} catch (IOException e) {
			log.error(e);
		}


		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(props.getProperty("username"), props.getProperty("password"));
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(props.getProperty("from")));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);

			Transport.send(message);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
    }

  
} 