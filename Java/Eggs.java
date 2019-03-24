/*
Eggs
Dino Ivusic
1.10.2018.
*/

public class Eggs{
	//variables
	private int eggNum;
	private int boxes;
	private int leftOver;
	private final int BOX=12;
	//constructor
	public Eggs(){
	eggNum=0;
	boxes=0;

	}
	//setters
	public void setEgg(int eggNum){
		this.eggNum=eggNum;
	}
	public void setBoxes(int boxes){
		this.boxes=boxes;
	}
	public void setLeftOver(int leftOver){
		this.leftOver=leftOver;
	}
	//getters and calculation
	public void calculation(){
		boxes=eggNum/12;
		leftOver=eggNum%12;
	}
	public int getBoxes(){
		return boxes;
	}
	public int getLeftOver(){
		return leftOver;
	}

}