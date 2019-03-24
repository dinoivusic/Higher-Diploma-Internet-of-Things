/*Bank1.java
Dino I.
20.10.2018
*/

public class Bank1{
	//data members
	private int accNum;
	private double balance;
	private String message="You got 100 euros bonus";
	private String name;

	//constructor
	public Bank1(){
		int accNum=0;
		double balance=0;
		String message="You got 100 euros bonus";
		String name="";
	}
	public Bank1(int accNum,double balance,String name){
		this.accNum=accNum;
		this.balance=balance;
		this.name=name;
	}

	//setters
		public void setName(String name){
			this.name=name;
		}
		public void setAccNum(int accNum){
			this.accNum=accNum;
		}
		public void setBalance(double balance){
			this.balance=balance;
		}


	//process
	public void compute(){
	balance = balance+100;
	}
	//getters
	public double getBalance(){
		return balance;
	}
	public String getMessage(){
		return message;
	}

}//end of class