import javax.swing.*;
public class CarServiceApp3{
	public static void main(String[]args){
		//data memebrs
		String day="";
		String service="";
		String message="";
		//object creation
		CarService2 car=new CarService2();
		//input
		service=JOptionPane.showInputDialog(null,"Please enter would you like a full, interim or prenct service");
		car.setService(service);
		day=JOptionPane.showInputDialog(null,"Please enter a day you would like to visit our shop");
		car.setDay(day);
		//process
		car.compute();
		//output

		message=car.getMessage();
		JOptionPane.showMessageDialog(null,message);


	}
}