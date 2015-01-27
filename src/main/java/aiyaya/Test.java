package aiyaya;

public class Test {
	public static void main(String args[]){
		int a = 4 , b =5 ;
		swap(a, b);
		
		System.out.println(a+", "+b);
	}
	
	public static void swap(int a, int b){
		int i ;
		i = a; 
		a = b ;
		b = i ;
	}
}
