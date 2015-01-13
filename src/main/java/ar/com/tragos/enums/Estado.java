package ar.com.tragos.enums;

public enum Estado implements Enumerable{
	BAJA(0), IGUAL(1), SUBE(2),MINIMO(3),MAXIMO(4),QUEBRAR(5);
	
	private final int value;
	
	private Estado(int estado) {
		this.value = estado;
	}



	public String getName(){
		return this.name();
	}

	@Override
	public Object getValue() {
		return value;
	}
	public String toString() {
		return String.valueOf(value);
	}
}
