//create an app that accepts word form user and rint a * for each letter of the word

import javax.swing.*;
public class Star{
	public static void main(String[]args){
	String word;

	word=JOptionPane.showInputDialog(null, "Enter a word");

	for(int i=0;i<word.length();i++){
		System.out.print('*');
	}
	}
}