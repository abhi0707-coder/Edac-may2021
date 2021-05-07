class Star8
{
public static void main(String args[])
{
int i, j, k;
int a, b;
a = 5;
b = 1;

for(i=1;i<=5;i++)
{
for(j=5;j>=i;j--)
{
System.out.print(" ");
}
for(k=1;k<=1;k++)
{
System.out.print("a++");
}
a--;
a = a - b;
b++;
System.out.println();
}

}
}
