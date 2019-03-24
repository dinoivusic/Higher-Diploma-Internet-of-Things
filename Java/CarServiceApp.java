import javax.swing.*;
import java.util.*;
public class CarServiceApp{
	public static void main(String[]args){
	//variables
			String fullService="";
			String interimService="";
			String prenctService="";
			String service="";
			String message="";

	//objects
	CarService car = new CarService();
	//input
	service=(JOptionPane.showInputDialog(null,"Enter the type of service you want"));
	car.setService(service);
	//process
	car.compute();
	//output
	message=car.getMessage();
	JOptionPane.showMessageDialog(null,message);


	}
}