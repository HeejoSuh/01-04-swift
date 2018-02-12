//
//  MicrowaveTimeCalculator.swift
//  This program calculates the time required to microwave various types of snacks with a given type and number
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright ¡§I 2018 MTHS. All rights reserved.
//

import Foundation


var snackInfo: [String:Double] = ["sub":1.0, "pizza":0.75, "soup":1.75]
var microwaveTime: Double = 0
var individualTime: Double = 0
var input: String?
var snackType: String?
var snackCount: String?


//get snack type
while true {
	print("What snack? Pizza, Sub, or Soup? ")
    input = readLine(strippingNewline: true)
	//if has the snack 
	if let haveInDict = snackInfo[input!], haveInDict!=nil {
		snackType = input
		let individualTime=snackInfo[snackType!]!
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
	if let input = Int(input!), input != nil {
		if (input==1 || input==2 || input==3) {
			// Check if correct format
			let snackCount = Int(input)
			// Calculate
			microwaveTime = Double(individualTime/2)(snackCount+1)
			
			//minutes
			let min = Int(microwaveTime/60)
			//seconds
			let sec = Int(microwaveTime%60)
			print("Microwave your \(snackCount) \(snackType)(s) for \(min) minutes \(sec) seconds")
			break
			
		} else {
			print("You can't put more than 3 snacks in: try again")
		}		
	} else {
		print("ERROR:\nPut in a numeric value. TRY AGAIN. \n\n")
	}
}

