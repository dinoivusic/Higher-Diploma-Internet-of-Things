public class Payment{

	private double hours,basicPayRate,overtimeAmount,totalPay,overtimePay,totalBasicPayRate;

	public Payment(){

	}
	public Payment(double hours, double basicPayRate, double overtimeAmount){
		this.hours=hours;
		this.basicPayRate=basicPayRate;
		this.overtimeAmount=overtimeAmount;
		}

	//calculations
		public void compute(){
			totalBasicPayRate=hours*basicPayRate;
			overtimePay=(basicPayRate*1.5)*overtimeAmount;
			totalPay=totalBasicPayRate+overtimePay;
		}
		public double getTotalBasicPayRate(){
			return totalBasicPayRate;
		}
		public double getOvertimePay(){
			return overtimePay;
		}
		public double getTotalPay(){
			return totalPay;
		}



}