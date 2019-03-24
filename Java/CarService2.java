public class CarService2{
	//data memebers
	private String location;
	private String fullService;
	private String interimService;
	private String prenctService;
	private String day;
	private String service;
	private String message;
	//constructor
	public CarService2(){
		String location="";
		String fullService="";
		String interimService="";
		String prenctService="";
		String day="";
		String service="";
		String message="";
	}
	//setters
	public void setService(String service){
		this.service=service;
	}
	public void setDay(String day){
		this.day=day;
	}
	//process
	public void compute(){
		if(service.equalsIgnoreCase("fullService")){
			if(day.equalsIgnoreCase("Monday")){
			message="You should go to Blachardstown";
			}
		}
		else if(service.equalsIgnoreCase("fullService")){
			if(day.equalsIgnoreCase("Tuesday")){
			message="You should visit StillOrgan";
			}
		}

		else if(service.equalsIgnoreCase("interimService")){
				if(day.equalsIgnoreCase("Wednesday")){
					message="You should go to Blachardstown";
				}
		}
		else if(service.equalsIgnoreCase("interimService")){
				if(day.equalsIgnoreCase("Thursday")){
					message="You should visit StillOrgan";
				}
		}
		else if(service.equalsIgnoreCase("prenctService")){
				if(day.equalsIgnoreCase("Friday")){
					message="You should go to Blachardstown";
				}
		}
		else if(service.equalsIgnoreCase("prenctService")){
				if(day.equalsIgnoreCase("Saturday")){
					message="You should visit StillOrgan";
				}
		}
		else{
			message="Enter a valid day and type of service";
		}

	}
	//getters

	public String getMessage(){
		return message;
	}

}