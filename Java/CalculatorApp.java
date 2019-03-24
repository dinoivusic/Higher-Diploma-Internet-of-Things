import java.util.*;
public class CalculatorApp{

	public static void main(String[]args){
		//declare variables
		double x,y,result;
		//creating and declaring objects
		Scanner keyboard = new Scanner(System.in);
		Calculator cal = new Calculator();

		//input
		System.out.println("enter X ");
		x=keyboard.nextDouble();
		System.out.println("Enter Y ");
		y=keyboard.nextDouble();

		//call methods
		cal.setX(x);
		cal.setY(y);
		cal.add();
		result=cal.getResult();
		//output
		{

		cal.subtract();
		System.out.println(cal.getResult());


	}

}