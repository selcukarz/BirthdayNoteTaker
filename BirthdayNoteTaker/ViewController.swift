//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Selçuk Arıöz on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var birthdayInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let storedName = UserDefaults.standard.object(forKey: "name")
       let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameOutput.text = "Name: \(newName)"
        }
        if let newBirthday = storedBirthday as? String {
            birthdayOutput.text = "Date: \(newBirthday)"
            
        }
        
        
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameInput.text! , forKey: "name")
        UserDefaults.standard.set(birthdayInput.text! , forKey: "birthday")

        nameOutput.text = "Name: \(nameInput.text!)"
        birthdayOutput.text = "Date: \(birthdayInput.text!)"
    }
    
    @IBOutlet weak var nameOutput: UILabel!
    
    
    @IBOutlet weak var birthdayOutput: UILabel!
    
    
    @IBAction func deleteButton(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameOutput.text = "NamE: "
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayOutput.text = "BirthdaY: "

        }
    }
}

