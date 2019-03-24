/*
StudentUnionApp
Dino I.
08.10.2018
*/
import java.util.*;
public class StudentUnionApp{
	//main method
	public static void main(String[]args){
		//variables
		int capAmount,hoodieAmount,shirtAmount;
		final double CAPCOST,HOODIECOST,SHIRTCOST;
		double totalCost;
		//objects
		Scanner keyboard;
		keyboard=new Scanner(System.in);
		StudentUnion union;
		union=new StudentUnion();
		//input
		//ask question
		System.out.println("How many caps do you want?");
		//store answer
		capAmount=keyboard.nextInt();
		//send it b
		union.setCapAmount(capAmount);
		System.out.println("How many hoodies you want?");
		hoodieAmount=keyboard.nextInt();
		union.setHoodieAmount(hoodieAmount);
		System.out.println("How many caps do you want?");
		capAmount=keyboard.nextInt();
		union.setCapAmount(capAmount);

		//process
		union.compute();

		//output
		totalCost=union.getTotalCost();
		System.out.println(totalCost);
	}
}