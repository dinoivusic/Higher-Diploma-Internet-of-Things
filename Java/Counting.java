/*
Counting.java
D.Ivusic
5.11.2018.
*/
public class Counting{
	//data members
	private String word;
	private int vowels,consonants,digits,spaces;
	//constructor
	public void Counting(){

	}
	//setters
	public void setWord(String word){
		this.word=word;
	}
	//compute
		public void compute(){
		for(int i=0;i<word.length();++i){
			char ch=word.charAt(i);
			if(ch=='a'|| ch=='e'|| ch=='i' || ch=='o' || ch=='u'){
				++vowels;
			}
			else if((ch>='a' && ch<='z')){
				++consonants;
			}
			else if(ch>='0'&&ch<='9'){

				++digits;
			}
			else if(ch==' '){
				++spaces;
			}
		}
		}
		//getters
		public int getVowels(){
			return vowels;
		}
		public int getConsonants(){
			return consonants;
		}
		public int getDigits(){
			return digits;
		}
		public int getSpaces(){
			return spaces;
	}
}