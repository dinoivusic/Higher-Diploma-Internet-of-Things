/*Studentunion
Dino I.
08.10.2018.
*/

public class StudentUnion{
	//Data members
	private int capAmount;
	private int hoodieAmount;
	private int shirtAmount;
	private final double CAPCOST;
	private final double HOODIECOST;
	private final double SHIRTCOST;
	private double totalCost;
	//Constructor
	public StudentUnion(){
		capAmount=0;
		hoodieAmount=0;
		shirtAmount=0;
		CAPCOST=5.00;
		HOODIECOST=20.00;
		SHIRTCOST=10.00;
		totalCost=0.00;
	}
	//setters - 3 inputs
	//asking questions
	public void setCapAmount(int capAmount){
		this.capAmount=capAmount;
	}
	public void setHoodieAmount(int hoodieAmount){
		this.hoodieAmount=hoodieAmount;
	}
	public void setShirtAmount(int shirtAmount){
		this.shirtAmount=shirtAmount;
	}
	//compute
	public void compute(){
		totalCost=(capAmount*CAPCOST)+(shirtAmount*SHIRTCOST)+(hoodieAmount*HOODIECOST);
	}
	//getters
	public double getTotalCost(){
		return totalCost;
	}

}//ends class signature