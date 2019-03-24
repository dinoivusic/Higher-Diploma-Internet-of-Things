import javax.swing.*;
public class ReplaceApp{
	public static void main(String[]args){
		String name=" ";
		String newName=" ";

		Replace myReplace=new Replace();
		name=JOptionPane.showInputDialog(null, "Please enter your name");
		myReplace.setName(name);

		myReplace.compute();
		newName=myReplace.getNewName();
		JOptionPane.showMessageDialog(null, " your name is "+newName);
	}
}