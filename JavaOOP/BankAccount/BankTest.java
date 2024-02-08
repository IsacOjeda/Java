public class BankTest {
    public static void main(String[] args){
        // Create 3 bank accounts

            BankAccount account1 = new BankAccount();
            
            BankAccount account2 = new BankAccount();

            BankAccount account3 = new BankAccount();

        // Deposit Test
        // - deposit some money into each bank account's checking or savings account and display the balance each time
        // - each deposit should increase the amount of totalMoney
            account1.depositCheckings(400);

            account2.depositSavings(2034);

            account3.depositBoth(40,2000);
                         // checkings,savings

        // Withdrawal Test
        // - withdraw some money from each bank account's checking or savings account and display the remaining balance
        // - each withdrawal should decrease the amount of totalMoney
            account1.withdrawCheckings(240);

            account2.withdrawSavings(1200);

            account3.withdrawBoth(50,950);
                         // checkings,savings

        // Static Test (print the number of bank accounts and the totalMoney)
            System.out.println("Number of Bank Accounts : " + account1.getAccountsTotal());
            System.out.println("Total Money : $"+ account1.getTotalMoney());
        
            account1.balances();
            account2.balances();
            account3.balances();
    }
}
