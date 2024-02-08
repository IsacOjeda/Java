import java.util.ArrayList;
public class TestOrders {
    public static void main(String[] args) {
    
        // Menu items
    
        // Order variables -- order1, order2 etc.
        Order order1 = new Order();
        order1.name = "Good Coffee";
        order1.total = 2.50;    
        order1
        // Application Simulations
        // Use this example code to test various orders' updates
        System.out.printf("Name: %s\n", order1.name);
        System.out.printf("Total: %s\n", order1.total);
        System.out.printf("Ready: %s\n", order1.ready);
    }
}
