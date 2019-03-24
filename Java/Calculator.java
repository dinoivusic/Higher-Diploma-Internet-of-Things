public class Calculator{

	private double x;
	private double y;
	private double result;

	public Calculator(){
	}
	public Calculator(double x, double y){
		this.x=x;
		this.y=y;
	}

	public void setX(double x){
		this.x=x;
	}
	public void setY(double y){
		this.y=y;
	}
	public void setResult(double result){
		this.result=result;
	}

	public void add(){
		result=x+y;

	}
	public void subtract(){
		result=x-y;
	}
	public double getResult(){
		return result;
	}

}