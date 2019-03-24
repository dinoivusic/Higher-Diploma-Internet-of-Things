/*
Reverse.java
D.Ivusic
5.11.2018.
*/
//Create ann app to ask for word and print each letter backwards...

import javax.swing.*;
public class Reverse{
	public static void main(String[]args){
		String word="";
		int len;
		//input
		word=JOptionPane.showInputDialog(null, "Enter a word please");
		len=word.length();
		//
		for(int i=len-1;i>=0;i--){
			System.out.println(word.charAt(i));
		}
	}
}