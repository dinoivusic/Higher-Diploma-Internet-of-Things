/*SumApp.java
Dino I.
22.10.2018.
*/
import javax.swing.*;
public class SumApp{
	public static void main(String[]args){
		//data members
		int userInput=0;
		int sum=0;
		//objects
		Sum num;
		num=new Sum();
		//input
		userInput= Integer.parseInt(JOptionPane.showInputDialog(null,"enter a whole number please"));
		num.setUserInput(userInput);
		//process
		num.compute();
		//output
		sum=num.getSum();
		JOptionPane.showMessageDialog(null,sum);
	}
}