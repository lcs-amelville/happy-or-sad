//
//  ViewController.swift
//  happy or sad
//
//  Created by Melville, Aidan on 2019-11-20.
//  Copyright © 2019 Melville, Aidan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Mark: Propertys
    //Make Outlets
    
    @IBOutlet weak var phraseInputField: UITextField!
    
    @IBOutlet weak var outputResults: UILabel!
    
    //Mark Methods
    //Functions(Make things happen)
    //Actions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Analyze the text provided
    @IBAction func analyzeText(_ sender: Any) {
        
        
        //Clear the label results
        outputResults.text = ""
        
        
        //guard against no input
        guard let phraseInput = phraseInputField.text, phraseInput.count > 0 else {
            outputResults.text = "please enter a value"
            return
        }
        //make sure inpit isn't to long
        if phraseInput.count > 255 {
            outputResults.text = "Please enter a phrase with less that 255 characters"
            return
        }
            
            
            
    }
    
    
}







