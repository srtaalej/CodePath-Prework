//
//  ViewController.swift
//  firstApp
//
//  Created by Maria Mercado on 12/21/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    //@IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var petsStepper: UIStepper!
    
    @IBOutlet weak var numOfPetsLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!  //year
    @IBOutlet weak var schoolNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    
    @IBOutlet weak var majorField: UITextField!
    @IBOutlet weak var yesNoSegCtrl: UISegmentedControl!  //are u a hunter student?
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numOfPetsLabel.text = "\(Int(sender.value))"
    }
//
    @IBAction func introduceBtnTapped(_ sender: UIButton){
        let year = segmentControl.titleForSegment(at: segmentControl.selectedSegmentIndex)
        let hunterStu =  yesNoSegCtrl.titleForSegment(at: yesNoSegCtrl.selectedSegmentIndex)
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        
        
        var introduction = "Hi! My name is \(firstNameField.text!) \(lastNameField.text!). I go to \(schoolNameField.text!) and I am currently in my \(year!) year. I am a \(majorField.text!) major and I have \(numOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        
//        if(numOfPetsLabel.text! == "2025" && hunterStu == "Yes")
//        {
//            introduction = "Hey there classmate! Just two more years to go! Here's your introduction: Hey there classmate! Just two more years to go! Here's your introduction: Hi! My name is \(firstNameField.text!) \(lastNameField.text!) and I go to \(schoolNameField.text!). I am currently in my \(year!) year and I'm from \(whereYouFrom.text!). I am a \(majorField.text!) major and I graduate in \(numOfPetsLabel.text!))."
//        }
        if (numOfPetsLabel.text! == "1")
        {
            introduction = "Hey there Hawk! Here's your introduction: Hi! My name is \(firstNameField.text!) \(lastNameField.text!). I go to \(schoolNameField.text!) and I am currently in my \(year!) year. I am a \(majorField.text!) major and I have \(numOfPetsLabel.text!) pet. It is \(morePetsSwitch.isOn) that I want more pets."
        }
        
        if (hunterStu == "Yes")
        {
            introduction = "Hey there Hawk! Here's your introduction: Hi! My name is \(firstNameField.text!) \(lastNameField.text!). I go to \(schoolNameField.text!) and I am currently in my \(year!) year. I am a \(majorField.text!) major and I have \(numOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        }
        if (hunterStu == "Yes" && numOfPetsLabel.text! == "1")
        {
            introduction = "Hey there Hawk! Here's your introduction: Hi! My name is \(firstNameField.text!) \(lastNameField.text!). I go to \(schoolNameField.text!) and I am currently in my \(year!) year. I am a \(majorField.text!) major and I have \(numOfPetsLabel.text!) pet. It is \(morePetsSwitch.isOn) that I want more pets."
        }
             
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
     
               // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
               
        present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

