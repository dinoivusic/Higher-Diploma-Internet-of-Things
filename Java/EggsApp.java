/*Eggs app
Dino Ivusic
1.10.2018.
*/
import java.util.*;
public class EggsApp{
	//main method
	public static void main (String[]args){
		int eggNum;
		int leftOver;
		int boxes;
		Scanner keyboard = new Scanner(System.in);
	    Eggs eggs1=new Eggs();

		//questions
		System.out.println("How many eggs do you have? ");
		//store the answer
		eggNum=keyboard.nextInt();
		eggs1.setEgg(eggNum);
		eggs1.calculation();

		boxes=eggs1.getBoxes();
		System.out.println("You need "+ boxes +" boxes.");

		leftOver=eggs1.getLeftOver();
		System.out.println("You have "+boxes+ " boxes and leftover of " +leftOver+ " eggs!");

	}


}