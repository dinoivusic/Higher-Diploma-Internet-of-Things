public class CountA{
	private String name;
	private int count;

	public CountA(){
		name="";
		count=0;
	}
	public void setName(String name){
		this.name=name;
	}
	public void compute(){
		for(int i=0;i<name.length();i++){
			if(name.charAt(i)=='a'){
				count=count+1;
			}
		}
	}
	public int getCount(){
		return count;
	}
}