package me.dogfinder.main;

import java.util.ArrayList;
import java.util.Iterator;

import me.dogfinder.model.Dog;

public class DogeBase implements Database {

	ArrayList<Dog> dogs;
	
	public DogeBase(){
		//createDogeBase();
		dogs = new ArrayList<Dog>();
	}
	
	private void createDogeBase() {
		
				
		// Breed, Size, Color, Coat, Temperament, Ears, Pattern/Markings, Furnishings
		/*
		dogs.add(new Dog("Golden Retriever", "Large", new String[] {"Yellow"}, new String[] {"Long"}, new String[] {"Hunting", "House"}, "Floppy", false, false));
		dogs.add(new Dog("Labrador Retriever", "Large", new String[] {"Yellow", "Black", "Brown"}, new String[] {"Short"}, new String[] {"Hunting", "House"}, "Floppy", false, false));
		dogs.add(new Dog("German Shepard", "Large", new String[] {"Mixed"}, new String[] {"Medium"}, new String[] {"Herding", "Guard", "House"}, "Pointed", false, false));
		dogs.add(new Dog("Collie", "Large", new String[] {"Mixed"}, new String[] {"Long"}, new String[] {"Herding", "House"}, "Floppy", false, false));
		dogs.add(new Dog("Shorthair Collie", "Large", new String[] {"Mixed"}, new String[] {"Short"}, new String[] {"Herding", "House"}, "Floppy", false, false));
		dogs.add(new Dog("Bulldog", "Medium", new String[] {"Fawn", "Mixed"}, new String[] {"Short"}, new String[] {"House"}, "Half", true, false));
		dogs.add(new Dog("Yorkshire Terrier", "Small", new String[] {"Fawn", "Mixed"}, new String[] {"Long"}, new String[] {"Herding", "House"}, "Pointed", false, true));
		dogs.add(new Dog("Siberian Husky", "Medium", new String[] {"White", "Black", "Mixed"}, new String[] {"Medium"}, new String[] {"House"}, "Pointed", true, false));
		dogs.add(new Dog("Beagle", "Small", new String[] {"Fawn", "Mixed"}, new String[] {"Short"}, new String[] {"Hunting", "House"}, "Floppy", true, false));
		dogs.add(new Dog("Dachshund", "Small", new String[] {"Brown", "Black", "Mixed"}, new String[] {"Short", "Wire", "Long"}, new String[] {"Hunting", "House"}, "Floppy", false, true));
		dogs.add(new Dog("Poodle", "Medium", new String[] {"White", "Black", "Brown", "Grey", "Blue", "Fawn"},new String[] {"Curly-Wire"}, new String[] {"House"}, "Floppy", false, true));
		dogs.add(new Dog("Boxer", "Medium", new String[] {"Fawn"}, new String[] {"Short"}, new String[] {"Guard", "House"}, "Pointed", true, false));
		dogs.add(new Dog("Rottweiler", "Medium", new String[] {"Black"}, new String[] {"Short"}, new String[] {"Guard", "House"}, "Floppy", true, false));
		dogs.add(new Dog("Pug", "Small", new String[] {"Fawn", "Black"}, new String[] {"Short"}, new String[] {"House"}, "Floppy", true, false));
		dogs.add(new Dog("Chihuahua", "Small", new String[] {"White", "Fawn", "Mixed"}, new String[] {"Hairless", "Short", "Long"}, new String[] {"House"}, "Pointed", false, false));
		dogs.add(new Dog("Doberman Pinscher", "Medium", new String[] {"Black"}, new String[] {"Short"}, new String[] {"Guard", "House"}, "Pointed", false, false));
		dogs.add(new Dog("Shiba Inu", "Medium", new String[] {"Fawn", "Black"}, new String[] {"Medium"}, new String[] {"Hunting", "House"}, "Pointed", false, false));
		dogs.add(new Dog("Bull Terrier", "Medium", new String[] {"White", "Mixed"}, new String[] {"Short"}, new String[] {"House"}, "Pointed", true, false));
		dogs.add(new Dog("English Mastiff", "Large", new String[] {"Fawn", "Black"}, new String[] {"Short"}, new String[] {"House"}, "Floppy", true, false));
		dogs.add(new Dog("Border Collie", "Medium", new String[] {"White", "Black"}, new String[] {"Long"}, new String[] {"Herding", "House"}, "Floppy", true, false));
		dogs.add(new Dog("Great Dane", "Large", new String[] {"Fawn", "Black", "White"}, new String[] {"Short"}, new String[] {"House"}, "Pointed", true, false));
		dogs.add(new Dog("Cavalier King Charles Spaniel", "Small", new String[] {"White", "Black", "Fawn", "Mixed"}, new String[] {"Long", "Curly", "Wire"}, new String[] {"House"}, "Floppy", true, true));
		dogs.add(new Dog("Alaskan Malamute", "Large", new String[] {"White", "Black"}, new String[] {"Medium"}, new String[] {"House"}, "Pointed", true, false));
		dogs.add(new Dog("Pembroke Welsh Corgi", "Medium", new String[] {"Fawn", "Red", "Black", "Mixed"}, new String[] {"Medium"}, new String[] {"Herding", "House"}, "Pointed", true, false));
		dogs.add(new Dog("Shih Tzu", "Small", new String[] {"Fawn", "Black", "Brown", "White"}, new String[] {"Long", "Wire"}, new String[] {"House"}, "Floppy", true, true));
		*/
	}
	
	public void addDog(String pSize, String pColor, String pCoat, String pTemperament, String pEars, String pPattern, String pFurn){
		if (pSize == null) {
			pSize = "NA";
		}
		if (pColor == null) {
			pColor = "NA";
		}
		if (pCoat == null) {
			pCoat = "NA";
		}
		if (pTemperament == null) {
			pTemperament = "NA";
		}
		if (pEars == null) {
			pEars = "NA";
		}
		if (pPattern == null) {
			pPattern = "NA";
		}
		if (pFurn == null) {
			pFurn = "NA";
		}
		dogs.add(new Dog(pSize, pColor, pCoat, pTemperament, pEars, pPattern, pFurn));
	}
	
	public Dog getDog(int dogNumber){
		return (Dog) dogs.get(new Integer(dogNumber));
	}
	
	public ArrayList getDogs() {
		return dogs;
	}
}
