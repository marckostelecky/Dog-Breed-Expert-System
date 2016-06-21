(printout t "clp file loaded" crlf)

(import me.dogfinder.model.*)
(deftemplate Dog       (declare (from-class Dog)))
(deftemplate FeaturesMissing (slot count (type INTEGER))) 

(bind ?featuresmissing (assert (FeaturesMissing (count 0))))

(defrule check-size
	"Checks if user gave a size"
	(Dog {size == "NA"})
	=>
	(printout t "Rule 1 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))
	
(defrule check-color
	"Checks if user gave a color"
	(Dog {color == "NA"})
	=>
	(printout t "Rule 2 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))
	
(defrule check-coat
	"Checks if user gave a coat"
	(Dog {coat == "NA"})
	=>
	(printout t "Rule 3 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))
	
(defrule check-temper
	"Checks if user gave a temperament"
	(Dog {temperament == "NA"})
	=>
	(printout t "Rule 4 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))
	
(defrule check-ears
	"Checks if user gave a ear type"
	(Dog {ears == "NA"})
	=>
	(printout t "Rule 5 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))

(defrule check-pattern
	"Checks if user gave a pattern"
	(Dog {pattern == "NA"})
	=>
	(printout t "Rule 6 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))
	
(defrule check-furnishings
	"Checks if user gave a ear type"
	(Dog {furnishings == "NA"})
	=>
	(printout t "Rule 7 Fired" crlf)
	(modify ?featuresmissing (count (+ ?featuresmissing.count 1))))
	
(defrule no-dog-found
	"No Dog Breed Matched"
	(not (dogFound))
	=>
	(printout t "Rule 0 fired" crlf)
	(add(new String "Couldn't Match a Dog Breed")))
	
(defrule large
	"Dog is Large"
	(Dog {size == "Large"})
	=>
	(printout t "Rule 6 fired" crlf)
	(assert (large)))
	
(defrule mediumS
	"Dog is Medium"
	(Dog {size == "Medium"})
	=>
	(printout t "Rule 7 fired" crlf)
	(assert (medium)))	

(defrule small
	"Dog is Small"
	(Dog {size == "Small"})
	=>
	(printout t "Rule 8 fired" crlf)
	(assert (small)))		
	
(defrule floppy
	"Dog has floppy ears"
	(Dog {ears == "Floppy"})
	=>
	(printout t "Rule 9 fired" crlf)
	(assert (floppy)))

(defrule pointed
	"Dog has Pointed ears"
	(Dog {ears == "Pointed"})
	=>
	(printout t "Rule 10 fired" crlf)
	(assert (pointed)))	

(defrule half
	"Dog has Half ears"
	(Dog {ears == "Half"})
	=>
	(printout t "Rule 11 fired" crlf)
	(assert (half)))	
	
(defrule house-only
	"Dog is a house dog only"
	(Dog {temperament == "House"})
	=>
	(printout t "Rule 11 Fired" crlf)
	(assert (houseonly)))
	
(defrule hunting
	"Dog is a hunting dog"
	(Dog {temperament == "Hunting"})
	=>
	(printout t "Rule 12Fired" crlf)
	(assert (hunting)))

(defrule herding
	"Dog is a herding dog"
	(Dog {temperament == "Herding"})
	=>
	(printout t "Rule 13 Fired" crlf)
	(assert (herding)))
	
(defrule guard
	"Dog is a guard dog"
	(Dog {temperament == "Guard"})
	=>
	(printout t "Rule 14 Fired" crlf)
	(assert (guard)))

(defrule hasPattern
	"Dog has a coat pattern"
	(Dog {pattern == "Yes"})
	=>
	(printout t "Rule 15 Fired" crlf)
	(assert (pattern)))

(defrule hasFurnishing
	"Dog has a furnishing"
	(Dog {furnishings == "Yes"})
	=>
	(printout t "Rule 16 Fired" crlf)
	(assert (furnishing)))

(defrule onlyLarge
	(large)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 17 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Golden Retriever"))
	(add(new String "Dog Breed: Labrador Retriever"))
	(add(new String "Dog Breed: German Shepard"))
	(add(new String "Dog Breed: Collie"))
	(add(new String "Dog Breed: Shorthair Collie"))
	(add(new String "Dog Breed: English Mastiff"))
	(add(new String "Dog Breed: Great Dane"))
	(add(new String "Dog Breed: Alaskan Malamute")))

(defrule onlyMedium
	(medium)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 18 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Bulldog"))
	(add(new String "Dog Breed: Siberian Husky"))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Boxer"))
	(add(new String "Dog Breed: Rottweiler"))
	(add(new String "Dog Breed: Doberman Pinscher"))
	(add(new String "Dog Breed: Shiba Inu"))
	(add(new String "Dog Breed: Bull Terrier"))
	(add(new String "Dog Breed: Border Collie"))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))	
	
(defrule onlySmall
	(small)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 19 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Yorkshire Terrier"))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Beagle"))
	(add(new String "Dog Breed: Dachshund"))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Chihuahua"))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel"))
	(add(new String "Dog Breed: Shih Tzu")))
	
(defrule onlyHouse
	(houseonly)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 20 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Bulldog"))
	(add(new String "Dog Breed: Siberian Husky"))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Bull Terrier"))
	(add(new String "Dog Breed: English Mastiff"))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Chihuahua"))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel"))
	(add(new String "Dog Breed: Great Dane"))
	(add(new String "Dog Breed: Alaskan Malamute"))
	(add(new String "Dog Breed: Shih Tzu")))	
	
(defrule onlyGuard
	(guard)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 21 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard"))
	(add(new String "Dog Breed: Boxer"))
	(add(new String "Dog Breed: Rottweiler"))
	(add(new String "Dog Breed: Doberman Pinscher")))
	
(defrule onlyHunting
	(hunting)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 22 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Golden Retriever"))
	(add(new String "Dog Breed: Labrador Retriever"))
	(add(new String "Dog Breed: Beagle"))
	(add(new String "Dog Breed: Dachshund"))
	(add(new String "Dog Breed: Shiba Inu")))
	
(defrule onlyHerding
	(herding)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 23 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard"))
	(add(new String "Dog Breed: Collie"))
	(add(new String "Dog Breed: Shorthair Collie"))
	(add(new String "Dog Breed: Yorkshire Terrier"))
	(add(new String "Dog Breed: Border Collie"))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))
	
(defrule onlyFloppy
	(floppy)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 24 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Golden Retriever"))
	(add(new String "Dog Breed: Labrador Retriever"))
	(add(new String "Dog Breed: Collie"))
	(add(new String "Dog Breed: Shorthair Collie"))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Beagle"))
	(add(new String "Dog Breed: English Mastiff"))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Dachshund"))
	(add(new String "Dog Breed: Rottweiler"))
	(add(new String "Dog Breed: Border Collie"))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel"))
	(add(new String "Dog Breed: Shih Tzu")))
	
(defrule onlyPointed
	(pointed)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 25 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard"))
	(add(new String "Dog Breed: Yorkshire Terrier"))
	(add(new String "Dog Breed: Siberian Husky"))
	(add(new String "Dog Breed: Boxer"))
	(add(new String "Dog Breed: Chihuahua"))
	(add(new String "Dog Breed: Doberman Pinscher"))
	(add(new String "Dog Breed: Shiba Inu"))
	(add(new String "Dog Breed: Bull Terrier"))
	(add(new String "Dog Breed: Great Dane"))
	(add(new String "Dog Breed: Alaskan Malamute"))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))
	
(defrule onlyHalf
	(half)
	(FeaturesMissing {count == 6})
	=>
	(printout t "Rule 26 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Boxer")))
	
(defrule smallFloppy
	(small)
	(floppy)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 27 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Beagle"))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Dachshund"))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel"))
	(add(new String "Dog Breed: Shih Tzu")))

(defrule mediumFloppy
	(medium)
	(floppy)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 28 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Rottweiler"))
	(add(new String "Dog Breed: Border Collie")))

(defrule largeFloppy
	(large)
	(floppy)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 29 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Golden Retriever"))
	(add(new String "Dog Breed: Labrador Retriever"))
	(add(new String "Dog Breed: Collie"))
	(add(new String "Dog Breed: Shorthair Collie"))
	(add(new String "Dog Breed: English Mastiff")))	

(defrule smallPointed
	(small)
	(pointed)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 30 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Yorkshire Terrier"))
	(add(new String "Dog Breed: Chihuahua")))
	
(defrule mediumPointed
	(medium)
	(pointed)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 31 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Siberian Husky"))
	(add(new String "Dog Breed: Boxer"))
	(add(new String "Dog Breed: Doberman Pinscher"))
	(add(new String "Dog Breed: Shiba Inu"))
	(add(new String "Dog Breed: Bull Terrier"))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))

(defrule largePointed
	(large)
	(pointed)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 32 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard"))
	(add(new String "Dog Breed: Great Dane"))
	(add(new String "Dog Breed: Alaskan Malamute")))

(defrule smallHouse
	(small)
	(houseOnly)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 33 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Chihuahua"))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel"))
	(add(new String "Dog Breed: Shih Tzu")))
	
(defrule mediumHouse
	(medium)
	(houseOnly)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 34 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Bulldog"))
	(add(new String "Dog Breed: Siberian Husky"))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Bull Terrier")))
	
(defrule largeHouse
	(large)
	(houseOnly)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 35 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: English Mastiff"))
	(add(new String "Dog Breed: Great Dane"))
	(add(new String "Dog Breed: Alaskan Malamute")))
	
(defrule smallHunting
	(small)
	(hunting)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 36 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Beagle"))
	(add(new String "Dog Breed: Dachshund")))

(defrule mediumHunting
	(medium)
	(hunting)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 37 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Shiba Inu")))

(defrule largeHunting
	(large)
	(hunting)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 38 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Golden Retriever"))
	(add(new String "Dog Breed: Labrador Retriever")))
	
(defrule smallHerding
	(small)
	(herding)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 39 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Yorkshire Terrier")))

(defrule mediumHerding
	(medium)
	(herding)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 40 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Border Collie"))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))

(defrule largeHerding
	(large)
	(herding)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 41 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard"))
	(add(new String "Dog Breed: Collie"))
	(add(new String "Dog Breed: Shorthair Collie")))

(defrule mediumGuard
	(medium)
	(guard)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 42 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Boxer"))
	(add(new String "Dog Breed: Rottweiler"))
	(add(new String "Dog Breed: Doberman Pinscher")))

(defrule largeGuard
	(large)
	(guard)
	(FeaturesMissing {count == 5})
	=>
	(printout t "Rule 42 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard")))

(defrule smallFloppyHouse
	(small)
	(floppy)
	(houseonly)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 43 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Poodle"))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Chihuahua"))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel"))
	(add(new String "Dog Breed: Shih Tzu")))

(defrule smallPointedHouse
	(small)
	(pointed)
	(houseonly)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 44 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Pug"))
	(add(new String "Dog Breed: Chihuahua")))

(defrule mediumFloppyHouse
	(medium)
	(floppy)
	(houseonly)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 45 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Poodle")))

(defrule largeFloppyHouse
	(large)
	(floppy)
	(houseonly)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 46 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: English Mastiff")))

(defrule smallFloppyHunting
	(small)
	(floppy)
	(hunting)
	=>
	(printout t "Rule 47 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Beagle"))
	(add(new String "Dog Breed: Dachshund")))

(defrule smallPointedHerding
	(small)
	(pointed)
	(herding)
	=>
	(printout t "Rule 48 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Yorkshire Terrier")))

(defrule mediumPointedHunting
	(medium)
	(floppy)
	(hunting)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 49 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Shiba Inu")))		
	
(defrule mediumFloppyHerding
	(medium)
	(floppy)
	(herding)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 50 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Border Collie")))
	
(defrule mediumPointedHerding
	(medium)
	(pointed)
	(herding)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 51 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))
	
(defrule mediumFloppyGuard
	(medium)
	(floppy)
	(guard)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 52 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Rottweiler")))

(defrule mediumPointedGuard
	(medium)
	(pointed)
	(guard)
	(FeaturesMissing {count == 4})
	=>
	(printout t "Rule 53 fired" crlf)
	(assert (dogFound))
	(add(new String "Dog Breed: Boxer"))
	(add(new String "Dog Breed: Doberman Pinscher")))
	
(defrule pug
	"Dog is a Pug"
	(houseonly)
	(Dog {ears == "Floppy"})
	(Dog {size == "Small"})
	(Dog {color == "Fawn"})
	(Dog {coat == "Short"})
	(pattern)
	(not (furnishing))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Pug")))
	
(defrule bulldog
	"Dog is a Bulldog"
	(houseonly)
	(Dog {ears == "Half"})
	(Dog {size == "Medium"})
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Bulldog")))
	
(defrule siberian-husky
	"Dog is a Siberian Husky"
	(houseonly)
	(Dog {ears == "Pointed"})
	(Dog {size == "Medium"})
	(pattern)
	(or (Dog {color == "White"}) (Dog {color == "Black"}) (Dog {color == "Mixed"}))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Siberian Husky")))
	
(defrule poodle
	"Dog is a Poodle - Come Back to This"
	(or (and (houseonly)
	(Dog {ears == "Floppy"})
	(or (not (pattern)) (Dog {furnishings == "Yes"}))
	(or (Dog {size == "Small"}) (Dog {size == "Medium"}))
	(or (Dog {color == "White"}) (Dog {color == "Black"}) (Dog {color == "Brown"}) (Dog {color == "Grey"}) (Dog {color == "Blue"}) (Dog {color == "Fawn"}))
	(Dog {coat == "Curly-Wire"})))    
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Poodle")))
	
(defrule chihuahua
	"Dog is a Chihuahua"
	(or (and (houseonly)
	(Dog {size == "Small"})
	(Dog {ears == "Pointed"})
	(not (pattern))
	(not (furnishing))
	(or (Dog {coat == "Short"}) (Dog {coat == "Long"}))  )
	(and (houseonly)
	(Dog {coat == "Hairless"})))
	=> 
	(assert (dogFound))
	(add(new String "Dog Breed: Chihuahua")))
	
(defrule bull-terrier
	"Dog is a Bull Terrier"	
	(houseonly)
	(Dog {size == "Medium"})
	(Dog {ears == "Pointed"})
	(Dog {coat == "Short"})
	(pattern)
	(or (Dog {color == "White"}) (Dog {color == "Mixed"}))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Bull Terrier")))
	
(defrule english-mastiff
	"Dog is a English Mastiff"	
	(houseonly)
	(Dog {size == "Large"})
	(Dog {ears == "Floppy"})
	(Dog {coat == "Short"})
	(pattern)
	(not (furnishing))
	(or (Dog {color == "Fawn"}) (Dog {color == "Mixed"}) (Dog {color == "Mixed"}))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: English Mastiff")))

(defrule great-dane
	"Dog is a Great Dane"
	(houseonly)
	(Dog {ears == "Pointed"})
	(Dog {size == "Large"})
	(pattern)
	(Dog {coat == "Short"})
	(or (Dog {color == "White"}) (Dog {color == "Black"}) (Dog {color == "Fawn"}))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Great Dane")))
	
(defrule cavalier-king-charles-spaniel
	"Dog is a Cavalier King Charles Spaniel"
	(houseonly)
	(Dog {ears == "Floppy"})
	(Dog {size == "Small"})
	(pattern)
	(furnishing)
	(or (Dog {color == "White"}) (Dog {color == "Black"}) (Dog {color == "Fawn"}) (Dog {color == "Mixed"}))
	(or (Dog {coat == "Long + Curly"}) (Dog {coat == "Wire"}))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Cavalier King Charles Spaniel")))
	
(defrule alaskan-malamute
	"Dog is a Alaskan Malamute"
	(houseonly)
	(Dog {ears == "Pointed"})
	(Dog {size == "Large"})
	(Dog {coat == "Medium"})
	(or (Dog {color == "White"}) (Dog {color == "Black"}))
	(pattern)
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Alaskan Malamute")))

(defrule shih-tzu
	"Dog is a Shih-Tzu"
	(houseonly)
	(Dog {ears == "Floppy"})
	(Dog {size == "Small"})
	(pattern)
	(furnishing)
	(or (Dog {color == "White"}) (Dog {color == "Black"}) (Dog {color == "Fawn"}) (Dog {color == "Brown"}))
	(or (Dog {coat == "Long"}) (Dog {coat == "Wire"}))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Shih-Tzu")))
	
(defrule golden-retriever
	"Dog is a Golden Retriever"
	(hunting)
	(Dog {ears == "Floppy"})
	(Dog {size == "Large"})
	(Dog {coat == "Long"})
	(Dog {color == "Yellow"})
	(not (furnishing))
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Golden Retriever")))

(defrule labrador-retriever
	"Dog is a Labrador Retriever"
	(hunting)
	(Dog {ears == "Floppy"})
	(Dog {size == "Large"})
	(Dog {coat == "Short"})
	(or (Dog {color == "Yellow"}) (Dog {color == "Black"}) (Dog {color == "Brown"}))
	(not (furnishing))
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Labrador Retriever")))
	
(defrule german-shepard
	"Dog is a German Shepard"
	(or (hunting) (herding))
	(Dog {ears == "Pointed"})
	(Dog {size == "Large"})
	(Dog {coat == "Medium"})
	(Dog {color == "Mixed"})
	(not (furnishing))
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: German Shepard")))
	
(defrule collie
	"Dog is a Collie"
	(herding)
	(Dog {size == "Large"})
	(Dog {ears == "Floppy"})
	(Dog {coat == "Long"})
	(Dog {color == "Mixed"})
	(not (furnishing))
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Collie")))

(defrule shorthair-collie
	"Dog is a Shorthair Collie"
	(herding)
	(Dog {size == "Large"})
	(Dog {ears == "Floppy"})
	(Dog {coat == "Short"})
	(Dog {color == "Mixed"})
	(not (furnishing))
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Shorthair Collie")))
	
(defrule yorkshire-terrier
	"Dog is a Yorkshire Terrier"
	(herding)
	(Dog {size == "Small"})
	(Dog {ears == "Pointed"})
	(Dog {coat == "Long"})
	(or (Dog {color == "Mixed"}) (Dog {color == "Fawn"}))
	(furnishing)
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Yorkshire Terrier")))

(defrule beagle
	"Dog is a Beagle"
	(hunting)
	(Dog {ears == "Floppy"})
	(Dog {size == "Small"})
	(Dog {coat == "Short"})
	(or (Dog {color == "Mixed"}) (Dog {color == "Fawn"}))
	(not (furnishing))
	(pattern)
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Beagle")))
	
(defrule dachshund
	"Dog is a Dachshund"
	(hunting)
	(Dog {ears == "Floppy"})
	(Dog {size == "Small"})
	(or (Dog {coat == "Short"}) (Dog {coat == "Wire"}) (Dog {coat == "Long"}))
	(or (Dog {color == "Mixed"}) (Dog {color == "Brown"}) (Dog {color == "Black"}))
	(not (pattern))
	(furnishing)
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Dachshund")))
	
(defrule boxer
	"Dog is a Boxer"
	(guard)
	(Dog {ears == "Pointed"})
	(Dog {size == "Medium"})
	(Dog {coat == "Short"})
	(Dog {color == "Fawn"})
	(not (furnishing))
	(pattern)
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Boxer")))
	
(defrule rottweiler
	"Dog is a Rottweiler"
	(guard)
	(Dog {ears == "Floppy"})
	(Dog {size == "Medium"})
	(Dog {coat == "Short"})
	(Dog {color == "Black"})
	(not (furnishing))
	(pattern)
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Rottweiler")))
	
(defrule doberman-pinscher
	"Dog is a Doberman Pinscher"
	(guard)
	(Dog {ears == "Pointed"})
	(Dog {size == "Medium"})
	(Dog {coat == "Short"})
	(Dog {color == "Black"})
	(not (furnishing))
	(not (pattern))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Doberman Pinscher")))

(defrule shiba-inu
	"Dog is a Shiba Inu"
	(hunting)
	(Dog {ears == "Pointed"})
	(Dog {size == "Medium"})
	(Dog {coat == "Medium"})
	(or (Dog {color == "Fawn"})(Dog {color == "Black"}))
	(not (pattern))
	(not (furnishing))
	=>
	(assert (dogFound))
	(add(new String "Doge Breed: Shiba Inu")))
	
(defrule border-collie
	"Dog is a Border Collie"
	(herding)
	(Dog {size == "Medium"})
	(Dog {ears == "Floppy"})
	(Dog {coat == "Long"})
	(or (Dog {color == "White"}) (Dog {color == "Black"}))
	(pattern)
	(not (furnishing))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Border Collie")))

(defrule pembroke-welsh-corgi
	"Dog is a Pembroke Welsh Corgi"
	(herding)
	(Dog {size == "Medium"})
	(Dog {ears == "Pointed"})
	(Dog {coat == "Medium"})
	(or (Dog {color == "Fawn"}) (Dog {color == "Black"}) (Dog {color == "Red"}) (Dog {color == "Mixed"}))
	(pattern)
	(not (furnishing))
	=>
	(assert (dogFound))
	(add(new String "Dog Breed: Pembroke Welsh Corgi")))