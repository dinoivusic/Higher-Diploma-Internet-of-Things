/*CarService.java
Dino I.
20.10.2018
*/

public class CarService{
	//data memebers
	private String fullService,interimService,prenctService,service,message;
	//constructor
	public CarService(){
		String fullService="";
		String interimService="";
		String prenctService="";
		String service="";
		String message="";
	}

	//setters
	public void setService(String service){
		this.service=service;
	}
	//process
	public void compute(){
		if (service.equalsIgnoreCase("fullService")){
			message="Blanchardstown or Stillorgan on Monday or Tuesday";
		}
		else if(service.equalsIgnoreCase("interimService")){
			message="Blanchardstown or Stillorgan on Wednesday or Thursday";
		}
		else if(service.equalsIgnoreCase("prenctService")){
			message="Blanchardstown or Stillorgan on Friday or Saturday";
		}
		else {
			message="Find Another shop";
		}
	}
	//getters
	public String getMessage(){
		return message;
	}




}