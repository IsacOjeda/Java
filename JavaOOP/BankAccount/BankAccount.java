public class BankAccount {
    // MEMBER VARIABLES
    private double checkingBalance;
    private double savingsBalance;

    private static int accounts;
    private static double totalMoney; // refers to the sum of all bank account checking and savings balances
    
    // CONSTRUCTOR
    // Be sure to increment the number of accounts
    public BankAccount(){
        this(0.0, 0.0);
    }
    public BankAccount(double checkingBalance, double savingsBalance){
        System.out.println("-------------------");
        System.out.println("Hello, Nice to meet you!");
        accounts += 1;
        this.checkingBalance = checkingBalance;
        System.out.println("Your Checkings ammount : $" + checkingBalance);
        this.savingsBalance = savingsBalance;
        System.out.println("Your Savings ammount : $" + savingsBalance);
        this.totalMoney = checkingBalance + savingsBalance;
    }

    // GETTERS
    // for checking, savings, accounts, and totalMoney
    public int getAccountsTotal(){
        return (accounts);
    }

    public double getTotalMoney(){
        return(totalMoney);
    }
    // METHODS
    // deposit
    public void depositCheckings(double depositAmmount){
        this.checkingBalance += depositAmmount;
        System.out.println("------------------------");
        System.out.println("Checking Balance is now : $"+ checkingBalance);
        this.totalMoney += depositAmmount;
        System.out.println("------------------------");
        System.out.println("Total Money is now : $"+ totalMoney);


    }

    public void depositSavings(double depositAmmount){
        this.savingsBalance += depositAmmount;
        System.out.println("------------------------");
        System.out.println("Savings Balance is now : $"+ savingsBalance);
        this.totalMoney += depositAmmount;
        System.out.println("------------------------");
        System.out.println("Total Money is now : $"+ totalMoney);
    
    }

    public void depositBoth(double depositCheck, double depositSave){
        this.checkingBalance += depositCheck;
        System.out.println("------------------------");
        System.out.println("Checkings Balance is now : $"+ checkingBalance);
        this.savingsBalance += depositSave;
        System.out.println("Savings Balance is now : $"+ savingsBalance);
        double depositTotal = (this.checkingBalance + this.savingsBalance);
        this.totalMoney += depositTotal;
        System.out.println("------------------------");
        System.out.println("Total Money is now : $"+ totalMoney);
    }
    // - users should be able to deposit money into their checking or savings account
    // withdraw 
    public void withdrawCheckings(double withdrawCheck){
        if(this.checkingBalance > withdrawCheck){
        this.checkingBalance -= withdrawCheck;
        this.totalMoney -= withdrawCheck;
        System.out.println("------------------------");
        System.out.println("New Checkings Balance: $"+ checkingBalance);
        System.out.println("------------------------");
        System.out.println("New Total Money Balance : $"+ totalMoney);
        }
        else{
            System.out.println("------------------------");
            System.out.println("Transaction Cancelled!");
            System.out.println("Insufficient Funds!");            
        }
    }

    public void withdrawSavings(double withdrawSave){
        if(this.savingsBalance > withdrawSave){
        this.savingsBalance -= withdrawSave;
        this.totalMoney -= withdrawSave;
        System.out.println("------------------------");
        System.out.println("New Savings Balance: $"+ savingsBalance);
        System.out.println("------------------------");
        System.out.println("New Total Money Balance : $"+ totalMoney);
        }
        else{
            System.out.println("------------------------");
            System.out.println("Transaction Cancelled!");
            System.out.println("Insufficient Funds!");
        }


    }

    public void withdrawBoth(double withdrawCheck, double withdrawSave){
        if(this.checkingBalance > withdrawCheck && this.savingsBalance > withdrawSave){
            this.checkingBalance -= withdrawCheck;
            System.out.println("------------------------");
            System.out.println("New Checkings Balance: $"+ checkingBalance);
            this.savingsBalance -= withdrawSave;
            System.out.println("New Savings Balance: $"+ savingsBalance);
            double withdrawTotal = (withdrawCheck + withdrawSave);
            this.totalMoney -= withdrawTotal;
            System.out.println("------------------------");
            System.out.println("New Total Money Balance : $"+ totalMoney);
        }else{
            System.out.println("------------------------");
            System.out.println("Transaction Cancelled!");
            System.out.println("Insufficient Funds!");
        }



    }

    // - users should be able to withdraw money from their checking or savings account
    // - do not allow them to withdraw money if there are insufficient funds
    // - all deposits and withdrawals should affect totalMoney
    // getBalance

    // - display total balance for checking and savings of a particular bank account

    public void balances(){
        System.out.println("------------------------");
        System.out.println("Hello, Here are your balances.");
        System.out.println("Checkings Balance : $"+ this.checkingBalance);
        System.out.println("Savings Balance : $"+ this.savingsBalance);
    }
}
