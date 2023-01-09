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
    
    @IBOutlet weak var whereYouFrom: UITextField!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numOfPetsLabel.text = "\(Int(sender.value))"
    }
//    @IBAction func introduceDidTap(_ sender: UIButton) {
//            UserDefaults.standard.set(firstNameTextField.text! as String, forKey: "firstName")
//            UserDefaults.standard.set(lastNameTextField.text! as String, forKey: "lastName")
//            UserDefaults.standard.set(schoolNameTextField.text! as String, forKey: "schoolName")
//            UserDefaults.standard.set(majorTextField.text! as String, forKey: "majorName")
//            UserDefaults.standard.set(segmentedControl.selectedSegmentIndex as Int, forKey: "year")
//            UserDefaults.standard.set(numberOfPetsLabel.text! as String, forKey: "numPets")
//            UserDefaults.standard.set(morePetsSwitch.isOn as Bool, forKey: "morePets")
//            UserDefaults.standard.set(semesterSlider.value as Float, forKey: "semesterMood")
//

//
//            var introduction = """
//    My name is \(String(describing: firstName)) \(String(describing:lastName)).
//    I attend \(String(describing:schoolName)) and major in \(String(describing: majorName)).
//    I am currently in my \(String(describing: year)) year .
//    I own \(String(describing: numPets)) pets. It is \(String(describing: morePets)) that I want more pets.
//    """
//    My name is \(String(describing: firstName)) \(String(describing:lastName)) and I go to \(String(describing:schoolName)). I am currently in my \(String(describing: year)) year and I'm from \(whereYouFrom.text!). I am a \(String(describing: majorName)) major and I graduate in \(String(describing: numPets)).
//
    @IBAction func introduceBtnTapped(_ sender: UIButton){
        let userDefaults = UserDefaults.standard
        userDefaults.set(firstNameField.text! as String, forKey: "firstName")
        userDefaults.set(lastNameField.text! as String, forKey: "lastName")
        userDefaults.set(schoolNameField.text! as String, forKey: "schoolName")
        userDefaults.set(majorField.text! as String, forKey: "majorName")
        userDefaults.set(segmentControl.selectedSegmentIndex as Int, forKey: "year")
        userDefaults.set(numOfPetsLabel.text! as String, forKey: "numPets") //class number label
        userDefaults.set(whereYouFrom.text! as String, forKey: "whereYouFrom")
        userDefaults.set(yesNoSegCtrl.selectedSegmentIndex as Int, forKey: "yesNo")
        userDefaults.synchronize()
        // Let's us chose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
                    if let year = userDefaults.object(forKey: "year") as? Int,
                    let firstName = userDefaults.object(forKey: "firstName") as? String,
                    let lastName = userDefaults.object(forKey: "lastName") as? String,
                    let schoolName = userDefaults.object(forKey: "schoolName") as? String,
                    let majorName = userDefaults.object(forKey: "majorName") as? String,
                    let numPets = userDefaults.object(forKey: "numPets") as? String,
                    let whereYouFrom = userDefaults.object(forKey: "whereYouFrom") as? String,
                    let yesNo = userDefaults.object(forKey: "yesNo") as? Int
                    else {return}
                        schoolNameField.text = schoolName
                        lastNameField.text = lastName
                        firstNameField.text = firstName
                        majorField.text = majorName
                        segmentControl.selectedSegmentIndex = year
                        numOfPetsLabel.text = numPets
                        yesNoSegCtrl.selectedSegmentIndex = yesNo
                        whereYouFrom.text = whereYouFrom
        let hunterStu =  yesNoSegCtrl.titleForSegment(at: yesNoSegCtrl.selectedSegmentIndex)
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        
        
        var introduction = "Hi! My name is \(String(describing: firstName)) \(String(describing:lastName)) and I go to \(String(describing:schoolName)). I am currently in my \(String(describing: year)) year and I'm from \(whereYouFrom.text!). I am a \(String(describing: majorName)) major and I graduate in \(String(describing: numPets))."
        
        
        if(numOfPetsLabel.text! == "2025" && hunterStu == "Yes")
        {
            introduction = "Hey there classmate! Just two more years to go! Here's your introduction: Hi! My name is \(String(describing: firstName)) \(String(describing:lastName)) and I go to \(String(describing:schoolName)). I am currently in my \(String(describing: year)) year and I'm from \(whereYouFrom.text!). I am a \(String(describing: majorName)) major and I graduate in \(String(describing: numPets))."
        }
        
        if (hunterStu == "Yes")
        {
            introduction = "Hey there Hawk! Here's your introduction: Hi! My name is \(String(describing: firstName)) \(String(describing:lastName)) and I go to \(String(describing:schoolName)). I am currently in my \(String(describing: year)) year and I'm from \(whereYouFrom.text!). I am a \(String(describing: majorName)) major and I graduate in \(String(describing: numPets))."
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

