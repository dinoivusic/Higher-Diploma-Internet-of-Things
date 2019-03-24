import java.util.*;
public class PaymentApp{
	public static void main(String[]args){
		double hours,basicPayRate,overtimeAmount;

		Payment pay;
		Scanner keyboard = new Scanner(System.in);


		//inputs
		System.out.println("How many hours did u work?");
		hours=keyboard.nextDouble();
		System.out.println("What is your basic pay rate?");
		basicPayRate=keyboard.nextDouble();
		System.out.println("How many overtime hours did u work?");
		overtimeAmount=keyboard.nextDouble();


		pay = new Payment(hours,basicPayRate,overtimeAmount);
		pay.compute();
		System.out.println("Your basic salary is " + pay.getTotalBasicPayRate());
		System.out.println("Your overtime pay rate is " + pay.getOvertimePay());
		System.out.println("Your total salary is " + pay.getTotalPay());
	}

}