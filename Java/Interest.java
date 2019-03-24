/*Dino Ivusic
Interest app JAVA
19.10.2018
*/

public class Interest{
	final double INTEREST;
	int months;
	double borrowedSum;
	double accumulatedSum;

	public Interest(){

		INTEREST=3;
		months=0;
		borrowedSum=0;


	}

	public void setBorrowedSum(double borrowedSum){
		this.borrowedSum=borrowedSum;
	}
	public void setAccumulatedSum(double accumulatedSum){
		this.accumulatedSum=accumulatedSum;

	}
	public void setMonths(int months){
		this.months=months;
	}
	public void calculate(){

		accumulatedSum=(borrowedSum*INTEREST*months)/100+borrowedSum;
	}
	public double getAccumulatedSum(){
		return accumulatedSum;
	}
	public double getBorrowedSum(){
		return borrowedSum;
	}
	public int getMonths(){
		return months;
	}
}