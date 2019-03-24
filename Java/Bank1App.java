import java.util.*;
import javax.swing.*;
public class Bank1App{
	public static void main(String[]args){
		//data memeber
			String name="Dino";
			int accNum=12313;
			double balance=100;
			String message="You got 100 euros bonus";
		//creating objects
			Bank1 dinoBank;
			Bank1 gizdiBank;
			Bank1 laneBank;
			Bank1 zeljacBank;
			dinoBank=new Bank1(accNum,balance,name);
			gizdiBank=new Bank1(12345,1000,"Gizdi");
			laneBank=new Bank1(12311,100,"Lane");
			zeljacBank=new Bank1();

		//input
		zeljacBank.setName(name);
		zeljacBank.setAccNum(accNum);


		//process
		dinoBank.compute();
		gizdiBank.compute();
		laneBank.compute();
		zeljacBank.compute();

		//output

		System.out.println("your balance is " + dinoBank.getBalance() + " and " + dinoBank.getMessage());
		System.out.println("your balance is " + gizdiBank.getBalance() + " and " + gizdiBank.getMessage());
	}
}