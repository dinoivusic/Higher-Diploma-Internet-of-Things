/*InterestApp
Dino ivusic
04.10.2018
Java class
*/
//importing java utility library and creating APP class
import java.util.*;
public class InterestApp{
	//Creating main method
	public static void main(String[]args){
		//Declaring variables
		int months;
		double borrowedSum;
		double accumulatedSum;
		Interest inter = new Interest();
		Scanner keyboard = new Scanner(System.in);
	//input
	System.out.println("Enter sum you want to borrow ");
	borrowedSum=keyboard.nextDouble();
	inter.setBorrowedSum(borrowedSum);
	System.out.println("Enter number of months ");
	months=keyboard.nextInt();
	inter.setMonths(months);
	//process
	inter.calculate();
	//output
	borrowedSum=inter.getBorrowedSum();
	System.out.println("You have borrowed " + borrowedSum + " Euroes.");
	months=inter.getMonths();
	System.out.println("You have " + months + " of your loan.");
	accumulatedSum=inter.getAccumulatedSum();
	System.out.println("Your total sum to repay is " + accumulatedSum + " Euroes.");
	}

}