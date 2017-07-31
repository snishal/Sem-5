import java.util.ArrayList;
class BankAccount{

	int account_number;
	float balance;
	
	BankAccount(int account_number){
	
		this.account_number = account_number;
		this.balance = balance;
	
	}
	
	float deposit(float x){

		balance += x;
		
		return balance;
	
	}
	
	float withdraw(float x){
	
		balance -= x;
		
		return balance;
	
	}
	
	int getAccno(){
		
		return account_number;
	
	}
	
	float getbalance(){
	
		return balance;
	
	}

	void taxdeduction(){
	
		//Your code	goes here...
	
	}

}

class Bank{

	ArrayList<BankAccount> accounts;
	
	Bank(){
	
		accounts = new ArrayList<BankAccount>();
	
	}
	
	void addAccount(int accno){
	
		BankAccount acc = new BankAccount(accno);
		accounts.add(acc);
		
		System.out.println("Account added Successfully");
	
	}
	
	float getTotalBalance(){

		float total = 0;

		for(BankAccount b : accounts){
		
			total += b.getbalance();
		
		}
		
		return total;
	
	}
	
	int getMinAccount(){
	
		int acc = accounts.get(0).getAccno();
		float min_bal = accounts.get(0).getbalance();
		
		for(int i = 1; i <= accounts.size(); i++){
		
			if(accounts.get(i).getbalance() < min_bal){
			
				acc = accounts.get(i).getAccno();
			
			}
		
		}
		
		return acc;
	
	}
	
	int getMaxAccount(){
	
		int acc = accounts.get(0).getAccno();
		float max_bal = accounts.get(0).getbalance();
		
		for(int i = 1; i <= accounts.size(); i++){
		
			if(max_bal < accounts.get(i).getbalance()){
			
				acc = accounts.get(i).getAccno();
			
			}
		
		}
		
		return acc;
	
	}
	
	int minThresold(float balance){
	
		int count = 0;
		
		for(BankAccount acc : accounts){
		
			if(balance <= acc.getbalance()){
				
				count++;	
				
			}
		
		} 
	
		return count;
	
	}
	
	void addBalance(int accno, float bal){
	
		for(BankAccount acc : accounts){
		
			if(accno == acc.getAccno()){
				
				float balance = acc.deposit(bal);
				System.out.println(accno + " has balance " + balance);
			
			}
		
		} 
	
	}	
	
	void withdraw(int accno, float bal){
	
		for(BankAccount acc : accounts){
		
			if(accno == acc.getAccno()){
				
				float balance = acc.withdraw(bal);
				System.out.println(accno + " has remaining balance " + balance);
			
			}
		
		} 
	
	}

}

public class TestBank{

	public static void main(String args[]){
	
		Bank bank = new Bank();
		
		bank.addAccount(11017);
		bank.addAccount(11018);
		
		bank.addBalance(11017, 2000.8f);
		bank.addBalance(11018, 1000f);


	}

}
