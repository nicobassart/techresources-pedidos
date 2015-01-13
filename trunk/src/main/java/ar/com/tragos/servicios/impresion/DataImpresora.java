package ar.com.tragos.servicios.impresion;

import gnu.io.CommPortIdentifier;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import gnu.io.UnsupportedCommOperationException;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.TooManyListenersException;

public class DataImpresora implements SerialPortEventListener{
	private String puerto;
	private int inicioMesa;
	private int finMesa;
	
	private Enumeration portList;
	private CommPortIdentifier portId;
	private SerialPort serialPort;
	private String one;	
	

	private byte[] readBufferArray;
	
	private int numBytes;
	private	OutputStream outputStream;
	private InputStream inputStream;

	public SerialPort getSerialPort() {
		return serialPort;
	}
	public void imprimir(String texto, int idMesa) throws IOException {
		boolean seleccionado = false;
		if (serialPort == null) {
			portList = CommPortIdentifier.getPortIdentifiers();

			while (portList.hasMoreElements()) {
				portId = (CommPortIdentifier) portList.nextElement();
				if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
					
					if (portId.getName().equals(puerto)) {
						// if (portId.getName().equals("/dev/term/a")) { //debe
						// ser para linux
						try {
							serialPort = (SerialPort) portId.open(puerto, 1000);
						} catch (PortInUseException e) {
							System.out.println("Ocurrio un error de puerto en uso" + e);
						}

						inputStream = serialPort.getInputStream();

						try {
							serialPort.addEventListener(this);

						} catch (TooManyListenersException e) {
							System.out.println("Tooo many Listener exception" + e);
						}
						serialPort.notifyOnDataAvailable(true);

						outputStream = serialPort.getOutputStream();
						inputStream = serialPort.getInputStream();
							
						try {
							serialPort.setSerialPortParams(9600,
									SerialPort.DATABITS_8,
									SerialPort.STOPBITS_1,
									SerialPort.PARITY_NONE);

							serialPort.setFlowControlMode(SerialPort.FLOWCONTROL_NONE);
						} catch (UnsupportedCommOperationException e) {
							System.out.println(e);
						}
						seleccionado=true;
					}
				}
			}
		}
		if(!seleccionado) throw new IOException("No se pudo seleccionar el puerto indicado en la parametria");
			
		sendRequest(texto);
	}
	public void sendRequest(String texto) throws IOException {
		outputStream.write(texto.getBytes());
		System.out.println("Impresion enviada" + puerto);
		outputStream.flush();


	}
	@Override
	public void serialEvent(SerialPortEvent event) {
		//SerialPort port = (SerialPort) event.getSource();

		switch (event.getEventType()) {
		case SerialPortEvent.DATA_AVAILABLE:
			try {
				if (inputStream.available() > 0) {
					numBytes = inputStream.available();
					readBufferArray = new byte[numBytes];
					// int readtheBytes = (int) inputStream.skip(2);
					//int readBytes = inputStream.read(readBufferArray);

					one = new String(readBufferArray);
					System.out.println("readBytes " + one);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			readBufferArray = null;
		}

	}
	public boolean imprimeEnEstaImpresora(int idMesa) {
		return (inicioMesa<= idMesa && idMesa <=finMesa );
	}
	public void setSerialPort(SerialPort serialPort) {
		this.serialPort = serialPort;
	}
	public String getPuerto() {
		return puerto;
	}
	public void setPuerto(String puerto) {
		this.puerto = puerto;
	}
	public int getInicioMesa() {
		return inicioMesa;
	}
	public void setInicioMesa(int inicioMesa) {
		this.inicioMesa = inicioMesa;
	}
	public int getFinMesa() {
		return finMesa;
	}
	public void setFinMesa(int finMesa) {
		this.finMesa = finMesa;
	}
}