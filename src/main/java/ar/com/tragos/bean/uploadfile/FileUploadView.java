package ar.com.tragos.bean.uploadfile;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.imageio.ImageIO;

import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.UploadedFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import ar.com.tragos.bean.uploadfile.Scalr.Rotation;
import ar.com.tragos.entity.Trago;
import ar.com.tragos.servicios.dao.tragos.ITragosDao;
 

@ManagedBean
@Component
public class FileUploadView {
	
	private String imgdirectory;
	private int idTrago;
    
	@Autowired
	private ITragosDao trago;
	
    private UploadedFile file;
 
    public UploadedFile getFile() {
        return file;
    }
 
    public void setFile(UploadedFile file) {
        this.file = file;
    }
     
    public void upload() {
        if(file != null) {
            FacesMessage message = new FacesMessage("Succesful", file.getFileName() + " is uploaded.");
            FacesContext.getCurrentInstance().addMessage(null, message);
        }
    }

    public void handleFileUpload(FileUploadEvent  event) throws IOException {
    	Trago untrago = trago.obtenerUnTrago(idTrago);
    	
    	 UploadedFile uploadedFile = event.getFile();
    	    String fileName = uploadedFile.getFileName();
    	    String contentType = uploadedFile.getContentType();
    	    byte[] contents = uploadedFile.getContents();
    	
    	    
    	    
    	 // write the inputStream to a FileOutputStream
//            OutputStream out = new FileOutputStream(new File(imgdirectory + fileName)); // cannot find path when adding username atm
            System.out.println("Called CopyFile"); //testing
            //Will need to take the uploadfileName and If it is a doc file onvert it
//            int read = 0;
//            byte[] bytes = new byte[1024];
//            InputStream in = uploadedFile.getInputstream();
//            while ((read = in.read(bytes)) != -1) {
//                out.write(bytes, 0, read);
//            }
            
            

            
            try{ 
            	InputStream is = event.getFile().getInputstream();
                OutputStream out = new FileOutputStream(new File(imgdirectory + fileName));  

                BufferedImage img = ImageIO.read(is);
                BufferedImage scaledImg;
                /*
                 *  400 x 450 sería el tamaño recomendable
                 */
                 
                int width = img.getWidth();
                int height = img.getHeight();
                if(width != 400 || height!=450 ){
                    FacesMessage message = new FacesMessage("Problemas", " El Ancho de la imagen y el alto tienen que ser de 400 x 450 px.");
                    FacesContext.getCurrentInstance().addMessage(null, message);
                    return;
                }
                /*****
                 * Las siguientes lineas son para escalar una imagen. 
                 * 
                 */
                	
//                if(img.getWidth() >= img.getHeight())
//                	scaledImg = Scalr.resize(img, Scalr.Method.AUTOMATIC, Scalr.Mode.AUTOMATIC,Rotation.NONE,  240, 140);
//                else
//                	scaledImg = Scalr.resize(img, Scalr.Method.AUTOMATIC, Scalr.Mode.AUTOMATIC,Rotation.NONE, 240, 140);
//                 	ImageIO.write(scaledImg, "jpg", out);
                 	ImageIO.write(img, "jpg", out);

   

            	
            
            
            
            
            
            
            
            is.close();
            out.flush();
            out.close();
            untrago.setNombreArchivo(fileName);
            trago.update(untrago);
    	
            } catch (IOException e) {
                e.printStackTrace();
            }
        FacesMessage message = new FacesMessage("Perfecto", "El archivo "+ event.getFile().getFileName() + " fué cargado correctamente.");
        FacesContext.getCurrentInstance().addMessage(null, message);
    }

	public String getImgdirectory() {
		return imgdirectory;
	}
	
	@Value("${imgdirectory}")
	public void setImgdirectory(String imgdirectory) {
		this.imgdirectory = imgdirectory;
	}

	public int getIdTrago() {
		return idTrago;
	}

	public void setIdTrago(int idTrago) {
		this.idTrago = idTrago;
	}
	
	public void setIdTrago(String idTrago) {
		System.out.println(idTrago);
	}

}