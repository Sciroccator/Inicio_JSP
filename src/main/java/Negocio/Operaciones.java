package Negocio;

public class Operaciones {
	
	public static int result ;
	
	
	public Operaciones() {
		super();
		// TODO Auto-generated constructor stub
	}
	public static int metodoSuma(int a, int b){
		result = a+b;
		return result;
	}
	public static int metodoResta(int a, int b){
		result = a-b;
		return result;
	}
	public static int metodoMultiplica(int a, int b){
		result = a*b;
		return result;
	}
	public static int metodoDivide(int a, int b){
		result = a/b;
		return result;
	}

}
