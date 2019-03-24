//develop an app to get 5 numbers from user and get average of numbers
/*
Average.java
Dino I.
12.11.2018
*/

import javax.swing.*;
public class Average{
	public static void main(String[]args){

	//data members
	int arr[];
	arr=new int[5];
	int sum=0;
	int avg;
	//input
	//looping and storing vlaues into array
		for(int i=0;i<5;i++){
			arr[i]=Integer.parseInt(JOptionPane.showInputDialog(null,"Enter a number"));
		}
	//process
		for(int i=0;i<arr.length;i++){
		//work out total of numbers
			sum=sum+arr[i];
		}
		avg=sum/arr.length;
		//output
		JOptionPane.showMessageDialog(null,"The average is "+ avg);
	}
}