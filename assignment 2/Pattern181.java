public class Pattern181 {
	public static void main(String args[]){
		
		
		int a = 65;
		
		for(int i=5;i>=1;i--){
			
			
			for(int j=1;j<=i;j++){
				
				System.out.print((char)(a+(j-1)));
				
			}
			
			System.out.println();
		}
		
	}
}