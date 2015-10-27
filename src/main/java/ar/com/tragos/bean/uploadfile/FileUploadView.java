package ar.com.tragos.bean.uploadfile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.UploadedFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

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
            OutputStream out = new FileOutputStream(new File(imgdirectory + fileName)); // cannot find path when adding username atm
            System.out.println("Called CopyFile"); //testing
            //Will need to take the uploadfileName and If it is a doc file onvert it
            int read = 0;
            byte[] bytes = new byte[1024];
            InputStream in = uploadedFile.getInputstream();
            while ((read = in.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }

            in.close();
            out.flush();
            out.close();
            untrago.setNombreArchivo(fileName);
            trago.update(untrago);
    	
    	
        FacesMessage message = new FacesMessage("Succesful", event.getFile().getFileName() + " is uploaded.");
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