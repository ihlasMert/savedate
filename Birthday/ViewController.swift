//
//  ViewController.swift
//  Birthday
//
//  Created by ihlas on 29.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad() // app açılınca ilk olacak olan şey
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirtday =  UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String { //storedName alarak string yapabilirsen eğer myname diye bir değişken oluştru
            nameLabel.text = myName
            
        }
        
        if let myBirthday = storedBirtday as?  String {
            birthdayLabel.text = myBirthday
        
        }
        
        
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name") //kaydetmek istediğin değeri buraya yaz.
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")//kaydetmek istediğin değeri bursya yaz.
        
        
        nameLabel.text = "Name: \(nameTextField.text)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text)"
        
    }
    
}

