//
//  Calculator.swift
//  Tipsy
//
//  Created by Admin on 02.03.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Calculator{
    var result = 0.0
    var tips = 0.0
    var bill = 0.0
    var amountOfPeople = 0.0
    
    mutating func calculateTotalResult(billTotal: String, tipPersent: String, numberOfPeople: String){
        tips = (Double(tipPersent) ?? 0) / 100
        
        bill = Double(billTotal) ?? 0.0
        amountOfPeople = Double(numberOfPeople) ?? 0.0
        
        result = (bill + (bill * tips)) / amountOfPeople
    }
    
    func getResult() -> String{
        return String(format: "%.2f", result)
    }
    
    func getTipsPersent() -> String{
        let tipsAsInt = Int(tips * 100)
        return String(tipsAsInt)
    }
    
    func getNumberOfPeople() -> String{
        let numberOfPeopleAsInt = Int(amountOfPeople)
        return String(numberOfPeopleAsInt)
    }
}
