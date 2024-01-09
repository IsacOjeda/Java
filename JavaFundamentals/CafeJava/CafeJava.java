public class CafeJava {
    public static void main (String [] args) {
        String generalGreeting = "Welcome to Cafe Java, ";
        String pendingMessage = ", your order will be ready shortly";
        String readyMessage = ", your order is ready";
        String displayTotalMessage = " Your total is $";    

        double mochaPrice = 5.5;

        double dripCoffee = 2.5;

        double latte = 3.5;

        double cappuccino = 4.5;

        String customer1 = "Cindhuri";

        String customer2 = "Sam";

        String customer3 = "Jimmy";

        String customer4 = "Noah";

        boolean isReadyOrder1 = true;
        boolean isReadyOrder2 = false;
        boolean isReadyOrder3 = true;
        boolean isReadyOrder4 = true;

        System.out.println(generalGreeting + customer1);

        System.out.println(isReadyOrder1 ? customer1 + readyMessage + displayTotalMessage + dripCoffee : customer1 + pendingMessage);
        
        System.out.println(isReadyOrder4 ? customer4 + readyMessage + displayTotalMessage + cappuccino : customer4 + pendingMessage);

        System.out.println(isReadyOrder2 ? customer2 + readyMessage + displayTotalMessage + latte * 2 : customer2 + pendingMessage);

        System.out.println(isReadyOrder3 ? customer3 + readyMessage + displayTotalMessage + (latte - dripCoffee) : customer3 + pendingMessage);

    }
}