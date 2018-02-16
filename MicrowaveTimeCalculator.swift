
//
//  MicrowaveTimeCalculator.swift
//  This program calculates the time required to microwave various types of snacks with a given type and number
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
import Foundation

var snackInfo: [String:Double] = [
								"sub":1.0, 
								"pizza":0.75,
								"soup":1.75]
var microwaveTime: Double = 0
var individualTime: Double = 0
var input: String?
var snackType = ""
var snackCount: String?



//get snack type
while true {
	print("What snack? Pizza, Sub, or Soup? ")
    	input = readLine(strippingNewline: true)
	//if has the snack 
	if snackInfo[String(input!)] != nil{
		snackType = input!
		individualTime = snackInfo[String(input!)]!
		break
	} else {
		print("ERROR: Try again with Pizza, Sub, or Soup. \n\n")
	}
}

//get snack count
while true {
	print("How many do you wish to microwave?: ")
    let input = readLine(strippingNewline: true)
	//check if input is a number
	if let snackCount = Int(input!){
		// Check if correct format
		if (snackCount==1 || snackCount==2 || snackCount==3) {
			// Calculate
			microwaveTime = (individualTime/2)*(Double(snackCount)+1)
			
			//minutes
			let min = Int(microwaveTime/60)
			//seconds
			let sec = Int(microwaveTime.truncatingRemainder(dividingBy: 60))
			
			print("Microwave your \(snackCount) \(snackType) for \(min) minutes \(sec) seconds")
			break
			
		} else {
			print("You can't put more than 3 snacks in: try again")
		}		
	} else {
		print("ERROR:\nPut in a numeric value. TRY AGAIN. \n\n")
	}
}


