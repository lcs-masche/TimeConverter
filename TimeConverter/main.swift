//
//  main.swift
//  TimeConverter
//
//  Created by Mo Asche on 2021-02-03.
//

import Foundation

print("Nanoseconds (1)")
print("Microseconds (2)")
print("Miliseconds (3)")
print("Seconds (4)")
print("Minutes (5)")
print("Hours (6)")
print("Days (7)")
print("Weeks (8)")
print("Month (9)")
print("Years (10)")
print("Decade (11)")
print("Century (12)")
print("Quit (13)")

let from = Int.collectInput(withPrompt: "What do you want to convert from? ", minimum: 1, maximum: 12)

let value = Double.collectInput(withPrompt: "What number do you want to convert? ", minimum: 0 , maximum: nil )

func turnToDays(from: Int, value: Double) -> Double {
    var dayValue = 0.0
    switch from {
    case 1://nanoseconds to days
       dayValue = value / pow(8.64, 13.0)
        
    case 2: //microseconds to days
        dayValue = value / pow(8.64, 10.0)
        
    case 3: // miliseconds
        dayValue = value / pow(8.64, 7.0)
        
    case 4: // seconds to days
        dayValue = value / 86400.0
       
    case 5: // minutes to days
        dayValue = value / 1440.0
        
    case 6: // hours to days
        dayValue = value / 25.0
        
    case 7: //days to days
        dayValue = value * 1.0
        
    case 8: //weeks to days
        dayValue = value * 7.0
    
    case 9:
//        print("What month is it?")
//        print("If it is one of these enter (1)")
//        print("January, March, May, July, August, October, December")
//        print("If it is one of these eneter (2)")
//        print("April, June, September, November")
//        print("If it is Febuary enter (3)")
//
//        let monthOfTheYear = Double.collectInput(withPrompt: "What month is it? ", minimum: 1, maximum: 3)
//
//        switch monthOfTheYear {
//        case 1:
//            dayValue = value * 31
//
//        case 2:
//            dayValue = value * 30
//
//        case 3:
//            dayValue = value * 30.417
//        default:
//            break
//        }
        dayValue = value * 30.417
        
    case 10:
        dayValue = value * 365
        
    case 11:
        dayValue = value * 3650
        
    case 12:
        dayValue = value * 36500
    
    case 13:
        exit(0)
   
    default:
        break
    }
    return dayValue

}

print("Nanoseconds (1)")
print("Microseconds (2)")
print("Miliseconds (3)")
print("Seconds (4)")
print("Minutes (5)")
print("Hours (6)")
print("Days (7)")
print("Weeks (8)")
print("Month (9)")
print("Years (10)")
print("Decade (11)")
print("Century (12)")
print("Quit (13)")
let to = Int.collectInput(withPrompt: "What do you want to convert to? ", minimum: 1, maximum: 12)

func daytoOther(dayValue: Double, to: Double) -> Double {
    var otherValue = 0.0
    switch to {
    case 1:
        otherValue = dayValue * pow(8.64, 13)
    case 2:
        otherValue = dayValue * pow(8.64, 10)
    case 3:
        otherValue = dayValue * pow(8.64, 7)
    case 4:
        otherValue = dayValue * 86400
    case 5:
        otherValue = dayValue * 1440
    case 6:
        otherValue = dayValue * 24
    case 7:
        otherValue = dayValue * 1
    case 8:
        otherValue = dayValue / 7
    case 9:
        otherValue = dayValue / 30.417
    case 10:
        otherValue = dayValue / 365
    case 11:
        otherValue = dayValue / 3650
    case 12:
        otherValue = dayValue * 36500
    
    case 13:
        exit(0)

    default:
        break
    }
    return otherValue
}
var dayTime = turnToDays(from: from, value: value)
let output = daytoOther(dayValue: dayTime , to: Double(to))
print(output)
