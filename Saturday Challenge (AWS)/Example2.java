class Example2 {
    Node head;
 
    class Node {
        int data;
        Node next;
        Node(int d)
        {
            data = d;
            next = null;
        }
    }
 
    void pairWiseSwap()
    {
        Node temp = head;
        while (temp != null && temp.next != null) {
 
        // Swap the data
         int i = temp.data;
         temp.data = temp.next.data;
         temp.next.data = i;
        temp = temp.next.next;
      }
   }
    public void push(int new_data)
    {

        Node new_node = new Node(new_data);

        new_node.next = head;
        head = new_node;
    }
    void displayList()
    {
        Node temp = head;
        while (temp != null) {
            System.out.print(temp.data + " ");
            temp = temp.next;
        }
        System.out.println();
    }
    public static void main(String args[])
    {
        Example2 ex = new Example2();
        
        ex.push(4);
        ex.push(3);
        ex.push(2);
        ex.push(1);
 
        System.out.println("Linked List before calling pairWiseSwap() ");
        ex.displayList();
 
        ex.pairWiseSwap();
 
        System.out.println("Linked List after calling pairWiseSwap() ");
        ex.displayList();
    }
}