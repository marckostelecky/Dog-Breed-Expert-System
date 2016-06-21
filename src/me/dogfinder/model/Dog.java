package me.dogfinder.model;

public class Dog {

	private String breed;
	private String size;
	private String color;
	private String coat;
	private String temperament;
	private String ears;
	private String pattern;
	private String furnishings;
	
	public Dog(String pSize, String pColor, String pCoat, String pTemperament, String pEars, String pPattern, String pFurn){
		size = pSize;
		color = pColor;
		coat = pCoat;
		temperament = pTemperament;
		ears = pEars;
		pattern = pPattern;
		furnishings = pFurn;
	}
	
	/* public String getBreed(){
		return breed;
	} */
	public String getSize(){
		return size;
	}
	
	public String getColor(){
		return color;
	}
	
	public String getCoat(){
		return coat;
	}
	
	public String getTemperament(){
		return temperament;
	}
	
	public String getEars(){
		return ears;
	}
	
	public String getFurnishings(){
		return furnishings;
	}
	
	public String getPattern() {
		return pattern;
	}
}

