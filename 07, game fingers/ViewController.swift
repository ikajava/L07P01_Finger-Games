//
//  ViewController.swift
//  07, game fingers
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber = Int(arc4random_uniform(6))
    
    var textFieldValue = Int()
    
    @IBOutlet weak var textFieldForUser: UITextField!
    
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPress(_ sender: Any) {
        
        textFieldValue = Int(textFieldForUser.text!)!
        if textFieldValue == randomNumber {
            resultLabel.text = "სწორია, თქვენ გამოიცანით!"
        } else {
            resultLabel.text = "არასწროდია, კიდევ სცადეთ!"
        }
        
        print("\(randomNumber)")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

