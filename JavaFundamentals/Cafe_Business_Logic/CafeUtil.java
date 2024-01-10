import java.util.ArrayList;
public class CafeUtil{

    public int getStreakGoal(){
        int streak = 1+2+3+4+5+6+7+8+9+10;
        System.out.println(streak);
        return streak;
    }

    public double getOrderTotal(double[]prices){
            return prices[0]+prices[1]+prices[2]+prices[3];
    }


    public void displayMenu(ArrayList<String> menuItems){
        // for( int i = 0;i<menuItems.size();i++){
        //     System.out.println(menuItems.get(i));
        // }
        for ( String i : menuItems){
            System.out.println(i);
        }

    }
    public void addCustomer(ArrayList<String> customers){
        System.out.println("Please enter your name: ");
        String username = System.console().readLine();
        System.out.println("Hello "+ username + "! There are " + customers.size() + " people in front of you");
        System.out.println(customers);
        customers.add(username);
    }
}