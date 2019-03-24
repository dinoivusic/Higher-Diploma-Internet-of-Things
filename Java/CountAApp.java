import javax.swing.*;
public class CountAApp{
public static void main(String[]args){
	String name;
	int count;
	//objects
	CountA myCount=new CountA();

	name=JOptionPane.showInputDialog(null, "Please enter your name");
	myCount.setName(name);

	myCount.compute();

	count=myCount.getCount();
	JOptionPane.showMessageDialog(null, "The Letter A appears "+count+" times in your name");


}

}