/*
CountingApp.java
D.Ivusic
5.11.2018.
*/
import javax.swing.*;
public class CountingApp{
	public static void main(String[]args){
		String word="";
		int vowels=0,consonants=0,digits=0,spaces=0;
		//objects
		Counting count = new Counting();
		//input

		word=JOptionPane.showInputDialog(null, "Please enter a word");
		count.setWord(word);
		//compute
		count.compute();
		//output
		vowels=count.getVowels();
		JOptionPane.showMessageDialog(null,"You have "+vowels+" vowels");
		consonants=count.getConsonants();
		JOptionPane.showMessageDialog(null,"You have "+consonants+" consonants");
		digits=count.getDigits();
		JOptionPane.showMessageDialog(null,"You have "+digits+" digits");
		spaces=count.getSpaces();
		JOptionPane.showMessageDialog(null,"You have "+spaces+" spaces");
	}
}