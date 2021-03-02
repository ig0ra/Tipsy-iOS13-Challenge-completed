//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Admin on 02.03.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalResult = "0.0"
    var numberOfPeople = "0"
    var tipsPersent = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = totalResult
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(tipsPersent)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
