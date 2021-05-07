public class PyPatt5 {
	public static void main(String args[]){
		
		for(int i=9;i>=1;i--){
			
			for(int r=(i-1);r>=1;r--){
				System.out.print(" ");
			}
			
			for(int k=i; k<9;k++){
				System.out.print(k);
			}
			
			for(int j=9;j>=i;j--){
				System.out.print(j);
			}
			
			System.out.println();
		}
		
		
	}
}