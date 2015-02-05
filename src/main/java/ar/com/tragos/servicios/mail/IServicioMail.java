package ar.com.tragos.servicios.mail;
import java.io.File;  
  
public interface IServicioMail {  
  
    public void send(String to, String subject, String text);  
      
    public void send(String to, String subject, String text, File... attachments);  
  
} 