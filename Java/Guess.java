/*
Guess.java
Dino I.
15.10.2018.
*/

public class Guess{
	private int random,guess;
	private String message;
	//constructor
	public Guess(){
		random=(int)(Math.random()*10);
		guess=0;

	}
	//setters
	public void setGuess(int guess){
		this.guess=guess;
	}

	//compute ifs
	public void compute(){
		if (guess==random){
		message="Congratulations, you guessed correctly!";
		}
		else if (guess>random){
			message="You guessed too high, sorry!";
		}
		else {
			message="you guessed to low, sorry!";
		}


	}
	//getters
	public String getMessage(){
		return message;
	}
	public int getRandom(){
		return random;
	}

}