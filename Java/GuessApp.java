/*
GuessApp.java
Dino I.
15.10.2018.
*/
//importing
import java.lang.Math.*;
import javax.swing.*;
public class GuessApp{
//creating main method
	public static void main(String[]args){
		int random,guess;
		String message;
		//declare and create objects
		random=0;
		guess=0;
		message="";
		Guess num;
		num=new Guess();
		//inputs

		guess=Integer.parseInt(JOptionPane.showInputDialog(null, " Pick a number from 1 to 10 pls"));
		num.setGuess(guess);
		//process
		num.compute();
		//output
		message=num.getMessage();
		JOptionPane.showMessageDialog(null, message);
		random=num.getRandom();
		JOptionPane.showMessageDialog(null, random);
	}
}