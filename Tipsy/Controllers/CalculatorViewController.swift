//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var calculator = Calculator()
    
    var tips = ""

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let selectedButton = sender.currentTitle!
        tips = String(selectedButton.dropLast())
        
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        print(calculator.tips)
        let numberOfPeople = splitNumberLabel.text ?? ""
        let billTotal = billTextField.text ?? ""
        
        calculator.calculateTotalResult(billTotal: billTotal, tipPersent: tips, numberOfPeople: numberOfPeople)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.totalResult = calculator.getResult()
            destinationVC.numberOfPeople = calculator.getNumberOfPeople()
            destinationVC.tipsPersent = calculator.getTipsPersent()
        }
    }
}

