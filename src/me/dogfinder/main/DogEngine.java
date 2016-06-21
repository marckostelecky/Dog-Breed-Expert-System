package me.dogfinder.main;

import me.dogfinder.main.DogeBase;
import me.dogfinder.model.Dog;

import java.util.ArrayList;
import java.util.Iterator;

import jess.*;

public class DogEngine {
	 
	 private Rete engine;
	 private WorkingMemoryMarker marker;
	 private DogeBase dogbase;
	 private Iterator<String> result;
	
	 public DogEngine(DogeBase aDatabase) throws JessException {
	        // Create a Jess rule engine
	        engine = new Rete();
	        engine.reset();

	        // Load the dog rules
	        engine.batch("dogrules.clp");

	        // Load the dog data into working memory
	        dogbase = aDatabase;
	        engine.addAll(dogbase.getDogs());

	        // Mark end of catalog data for later
	        marker = engine.mark();
	    }
	 
	 private void loadDogData(int dogNumber) throws JessException {
		 	engine.resetToMark(marker);
	        // Retrive the order from the database
	    	Dog dog = dogbase.getDog(dogNumber);
	    	ArrayList dogList = dogbase.getDogs();
	    	
	        
	    	if (dog != null) {
	    		// Add the order and its contents to working memory
	    		engine.add(dog);
	    	}
	    }
	 
	 public Iterator<String> run(int dogNumber) throws JessException {	
	    	// Load data for this order
	        loadDogData(dogNumber);
	    		    
	        // Fire the rules that apply to these parameters
	        engine.run();
	        
	        // Return the list of offers created by the rules
	        result = engine.getObjects(new Filter.ByClass(String.class));
	        return engine.getObjects(new Filter.ByClass(String.class));
	    }
	 
	 public Iterator<String> getResult() {
		 return result;
	 }
}
