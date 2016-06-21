package me.dogfinder.main;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import jess.JessException;
import me.dogfinder.model.Dog;

import javax.swing.JLabel;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Iterator;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import javax.swing.JTextArea;

public class DogBreedFinder extends JFrame implements ActionListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private static JTextArea outputArea;
	String color;
	String size;
	String coat;
	String ears;
	String temper;
	String hasFurnishings;
	String hasPattern;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					DogBreedFinder frame = new DogBreedFinder();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public DogBreedFinder() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 664, 524);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblD = new JLabel("Dog Breed Finder Expert System");
		lblD.setFont(new Font("Trebuchet MS", Font.PLAIN, 36));
		lblD.setBounds(58, 11, 545, 50);
		contentPane.add(lblD);
		
		JLabel lblDogSize = new JLabel("Dog Size");
		lblDogSize.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblDogSize.setToolTipText("Pick the general size of the dog.");
		lblDogSize.setBounds(38, 83, 90, 20);
		contentPane.add(lblDogSize);
		
		JRadioButton rdbtnSmall = new JRadioButton("Small");
		rdbtnSmall.setBounds(38, 110, 90, 23);
		rdbtnSmall.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            size = "Small"; }
		});
		contentPane.add(rdbtnSmall);
		
		JRadioButton rdbtnMedium = new JRadioButton("Medium");
		rdbtnMedium.setBounds(38, 136, 90, 23);
		rdbtnMedium.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            size = "Medium"; }
		});
		contentPane.add(rdbtnMedium);
		
		JRadioButton rdbtnLarge = new JRadioButton("Large");
		rdbtnLarge.setBounds(38, 162, 90, 23);
		rdbtnLarge.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            size = "Large"; }
		});
		contentPane.add(rdbtnLarge);
		
		ButtonGroup size = new ButtonGroup();
		size.add(rdbtnSmall);
		size.add(rdbtnMedium);
		size.add(rdbtnLarge);
		
		JLabel lblCoatLength = new JLabel("Coat Length/Texture");
		lblCoatLength.setToolTipText("Length and Features of Coat");
		lblCoatLength.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblCoatLength.setBounds(38, 192, 187, 20);
		contentPane.add(lblCoatLength);
		
		JRadioButton rdbtnHairless = new JRadioButton("Hairless");
		rdbtnHairless.setBounds(38, 218, 109, 23);
		rdbtnHairless.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Hairless"; }
		});
		contentPane.add(rdbtnHairless);
		
		JRadioButton rdbtnShort = new JRadioButton("Short");
		rdbtnShort.setBounds(38, 240, 109, 23);
		rdbtnShort.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Short"; }
		});
		contentPane.add(rdbtnShort);
		
		JRadioButton rdbtnWire = new JRadioButton("Wire");
		rdbtnWire.setBounds(38, 262, 109, 23);
		rdbtnWire.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Wire"; }
		});
		contentPane.add(rdbtnWire);
		
		JRadioButton rdbtnCurlyWire = new JRadioButton("Curly-Wire");
		rdbtnCurlyWire.setBounds(38, 284, 109, 23);
		rdbtnCurlyWire.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Curly-Wire"; }
		});
		contentPane.add(rdbtnCurlyWire);
		
		JRadioButton rdbtnMediumL = new JRadioButton("Medium");
		rdbtnMediumL.setBounds(38, 306, 109, 23);
		rdbtnMediumL.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Medium"; }
		});
		contentPane.add(rdbtnMediumL);
		
		JRadioButton rdbtnLong = new JRadioButton("Long");
		rdbtnLong.setBounds(38, 328, 109, 23);
		rdbtnLong.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Long"; }
		});
		contentPane.add(rdbtnLong);
		
		JRadioButton rdbtnLongCurly = new JRadioButton("Long + Curly");
		rdbtnLongCurly.setBounds(38, 350, 109, 23);
		rdbtnLongCurly.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            coat = "Long + Curly"; }
		});
		contentPane.add(rdbtnLongCurly);
		
		ButtonGroup furSize = new ButtonGroup();
		furSize.add(rdbtnHairless);
		furSize.add(rdbtnShort);
		furSize.add(rdbtnWire);
		furSize.add(rdbtnCurlyWire);
		furSize.add(rdbtnMediumL);
		furSize.add(rdbtnLong);
		furSize.add(rdbtnLongCurly);
		
		JLabel lblCoatColor = new JLabel("Coat Color");
		lblCoatColor.setToolTipText("Color of Coat");
		lblCoatColor.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblCoatColor.setBounds(235, 192, 97, 20);
		contentPane.add(lblCoatColor);
		
		JRadioButton rdbtnBrown = new JRadioButton("Brown");
		rdbtnBrown.setBounds(235, 218, 109, 23);
		rdbtnBrown.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Brown"; }
		});
		contentPane.add(rdbtnBrown);
		
		JRadioButton rdbtnRed = new JRadioButton("Red");
		rdbtnRed.setBounds(235, 240, 109, 23);
		rdbtnRed.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Red"; }
		});
		contentPane.add(rdbtnRed);
		
		JRadioButton rdbtnYellow = new JRadioButton("Yellow/Gold");
		rdbtnYellow.setBounds(235, 262, 109, 23);
		rdbtnYellow.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Yellow"; }
		});
		contentPane.add(rdbtnYellow);
		
		JRadioButton rdbtnBlack = new JRadioButton("Black");
		rdbtnBlack.setBounds(235, 284, 109, 23);
		rdbtnBlack.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Black"; }
		});
		contentPane.add(rdbtnBlack);
		
		JRadioButton rdbtnWhite = new JRadioButton("White");
		rdbtnWhite.setBounds(235, 306, 109, 23);
		rdbtnWhite.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "White"; }
		});
		contentPane.add(rdbtnWhite);
		
		JRadioButton rdbtnGrey = new JRadioButton("Grey");
		rdbtnGrey.setBounds(235, 328, 109, 23);
		rdbtnGrey.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Grey"; }
		});
		contentPane.add(rdbtnGrey);
		
		JRadioButton rdbtnBlue = new JRadioButton("Blue");
		rdbtnBlue.setBounds(235, 350, 109, 23);
		rdbtnBlue.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Blue"; }
		});
		contentPane.add(rdbtnBlue);
		
		JRadioButton rdbtnFawn = new JRadioButton("Fawn (Cream/Tan)");
		rdbtnFawn.setBounds(235, 372, 121, 23);
		rdbtnFawn.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Fawn"; }
		});
		contentPane.add(rdbtnFawn);
		
		JRadioButton rdbtnMixed = new JRadioButton("Mixed");
		rdbtnMixed.setBounds(235, 394, 109, 23);
		rdbtnMixed.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            color = "Mixed"; }
		});
		contentPane.add(rdbtnMixed);
		
		ButtonGroup furColor = new ButtonGroup();
		furColor.add(rdbtnBrown);
		furColor.add(rdbtnRed);
		furColor.add(rdbtnYellow);
		furColor.add(rdbtnBlack);
		furColor.add(rdbtnWhite);
		furColor.add(rdbtnGrey);
		furColor.add(rdbtnBlue);
		furColor.add(rdbtnFawn);
		furColor.add(rdbtnMixed);
		
		JLabel lblEarSize = new JLabel("Ear Style");
		lblEarSize.setToolTipText("Does the dog have floppy or straight, pointed ears.");
		lblEarSize.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblEarSize.setBounds(134, 83, 80, 20);
		contentPane.add(lblEarSize);
		
		JRadioButton rdbtnFloppy = new JRadioButton("Floppy");
		rdbtnFloppy.setBounds(134, 110, 90, 23);
		rdbtnFloppy.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            ears = "Floppy"; }
		});
		contentPane.add(rdbtnFloppy);
		
		JRadioButton rdbtnPointed = new JRadioButton("Pointed");
		rdbtnPointed.setBounds(134, 136, 90, 23);
		rdbtnPointed.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            ears = "Pointed"; }
		});
		contentPane.add(rdbtnPointed);
		
		JRadioButton rdbtnHalf = new JRadioButton("Half");
		rdbtnHalf.setBounds(134, 162, 90, 23);
		rdbtnHalf.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            ears = "Half"; }
		});
		contentPane.add(rdbtnHalf);
		
		ButtonGroup earType = new ButtonGroup();
		earType.add(rdbtnFloppy);
		earType.add(rdbtnPointed);
		earType.add(rdbtnHalf);
		
		
		JLabel lblTemperament = new JLabel("Temperament");
		lblTemperament.setToolTipText("Is the dog excitable?  Lazy?  Bark when it sees other animals?");
		lblTemperament.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTemperament.setBounds(220, 83, 136, 20);
		contentPane.add(lblTemperament);
		
		JRadioButton rdbtnHouse = new JRadioButton("House Only");
		rdbtnHouse.setBounds(220, 110, 109, 23);
		rdbtnHouse.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            temper = "House"; }
		});
		contentPane.add(rdbtnHouse);
		
		JRadioButton rdbtnHunting = new JRadioButton("Hunting");
		rdbtnHunting.setBounds(220, 136, 76, 23);
		rdbtnHunting.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            temper = "Hunting"; }
		});
		contentPane.add(rdbtnHunting);
		
		JRadioButton rdbtnHerding = new JRadioButton("Herding");
		rdbtnHerding.setBounds(220, 162, 70, 23);
		rdbtnHerding.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            temper = "Herding"; }
		});
		contentPane.add(rdbtnHerding);
		
		JRadioButton rdbtnGuard = new JRadioButton("Guard");
		rdbtnGuard.setBounds(292, 162, 64, 23);
		rdbtnGuard.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            temper = "Guard"; }
		});
		contentPane.add(rdbtnGuard);
		
		ButtonGroup Temperament = new ButtonGroup();
		Temperament.add(rdbtnHouse);
		Temperament.add(rdbtnHunting);
		Temperament.add(rdbtnHerding);
		Temperament.add(rdbtnGuard);
		
		JLabel lblPattern = new JLabel("Coat Pattern/Markings");
		lblPattern.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblPattern.setToolTipText("Does the dog have a mix of colors?  Spots?");
		lblPattern.setBounds(38, 433, 199, 20);
		contentPane.add(lblPattern);
		
		JRadioButton rdbtnPatternYes = new JRadioButton("Yes");
		rdbtnPatternYes.setBounds(38, 455, 57, 23);
		rdbtnPatternYes.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            hasPattern = "Yes"; }
		});
		contentPane.add(rdbtnPatternYes);
		
		JRadioButton rdbtnPatternNo = new JRadioButton("No");
		rdbtnPatternNo.setBounds(97, 455, 57, 23);
		rdbtnPatternNo.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            hasPattern = "No"; }
		});
		contentPane.add(rdbtnPatternNo);
		
		ButtonGroup pattern = new ButtonGroup();
		pattern.add(rdbtnPatternYes);
		pattern.add(rdbtnPatternNo);
		
		outputArea = new JTextArea();
		outputArea.setRows(200);
		outputArea.setLineWrap(true);
		outputArea.setEditable(false);
		outputArea.setBounds(362, 83, 276, 340);
		contentPane.add(outputArea);
		
		JLabel lblFurnishings = new JLabel("Furnishings");
		lblFurnishings.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblFurnishings.setBounds(38, 376, 110, 20);
		contentPane.add(lblFurnishings);
		
		JRadioButton rdbtnFurnYes = new JRadioButton("Yes");
		rdbtnFurnYes.setBounds(38, 403, 57, 23);
		rdbtnFurnYes.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            hasFurnishings = "Yes"; }
		});
		contentPane.add(rdbtnFurnYes);
		
		JRadioButton rdbtnFurnNo = new JRadioButton("No");
		rdbtnFurnNo.setBounds(97, 403, 57, 23);
		rdbtnFurnNo.addActionListener(new ActionListener() {
			@Override
	        public void actionPerformed(ActionEvent e) {
	            hasFurnishings = "No"; }
		});
		contentPane.add(rdbtnFurnNo);
		
		ButtonGroup furnishings = new ButtonGroup();
		furnishings.add(rdbtnFurnYes);
		furnishings.add(rdbtnFurnNo);
		
		JButton btnSearch = new JButton("Find That Dog!");
		btnSearch.setToolTipText("bark bark woof");
		btnSearch.setBounds(362, 434, 276, 23);
		btnSearch.addActionListener(this);
		contentPane.add(btnSearch);
		
		
		
	}
	
	public void actionPerformed(ActionEvent e) {
        String action = e.getActionCommand();
		if (action == "Find That Dog!") {
			try {
			outputArea.setText(null);
			DogeBase database = new DogeBase();
			database.addDog(size, color, coat, temper, ears, hasPattern, hasFurnishings);
			DogEngine engine = new DogEngine(database);
			
			
			process(database, engine, 0);
			
			}
			catch (JessException jess) {
				jess.printStackTrace();
			}
		}
}
	private static void process(DogeBase database, DogEngine engine, int dogNumber) throws JessException {
		Iterator<String> items;
		items = engine.run(dogNumber);
		while (items.hasNext()) {
		outputArea.append(items.next() + "\n");
		
		}			
		
	}
	
}
