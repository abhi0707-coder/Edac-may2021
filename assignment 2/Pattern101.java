public class Pattern101 {
	public static void main(String args[]){
		
		int a = 65;
		for(int i=5;i>=1;i--){
			for(int k=(i-1); k>=1;k--){
				System.out.print(" ");
			}
			for(int j=i; j<=5;j++){
				System.out.print((char) (a+(j-1))+" ");
			}
			System.out.println();
		}
		
	}
}