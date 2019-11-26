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
        
        // the number of happy and sad emojis
        
        var happyNumber = 0
        var sadNumber = 0
        
        //Clear the label results
        outputResults.text = ""
        
        
        //guard against no input
        guard let phraseInput = phraseInputField.text, phraseInput.count > 0 else {
            outputResults.text = "please enter a value"
            return
        }
        //make sure inpit isn't to long
        if phraseInput.count > 256 {
            outputResults.text = "Please enter a phrase with less that 255 characters"
            return
        }
        
        // happy and sad constants
        let happyBois = "😀😃😄😁😆😅😂🤣☺️😊🙂😌😋😛😝😜😚😍🥰😘😗😙🤪🤩🥳"
        let sadBois = "😒😞😔😟😕🙁☹️😣😖😫😩🥺😢😭😨😰😥😓😪😿☹️"
        
        //figure out if the message is happy or sad
        
        for characters in phraseInput {
            if happyBois.contains(characters){
                happyNumber = happyNumber + 1
            }
        }
        
        for characters in phraseInput {
            if sadBois.contains(characters) {
                sadNumber = sadNumber + 1
            
        }
        
        
        //tell the label what to say
            if happyNumber > sadNumber {
                outputResults.text = " you are happy"
            }else if sadNumber > happyNumber {
                outputResults.text = "you are sad"
            }else {
                outputResults.text = "we can't say?"
            }
        
    }
    
    
}







}
