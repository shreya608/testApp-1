//
//  LoginViewController.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 28.06.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var enterUsername: UITextField!
    
    
    @IBOutlet weak var enterPassword: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    var Authenticate = Authentication()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterUsername.delegate = self
        enterPassword.delegate = self

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(enterUsername.text!)
        print(enterPassword.text!)
        return true
    }
    
    @IBAction func enterUsername(_ sender: Any) {
        print(enterUsername.text!)
        enterUsername.endEditing(true)
        
    }
    
    @IBAction func enterPassword(_ sender: Any) {
        print(enterPassword.text!)
        enterPassword.endEditing(true)
        
    }
    
    
    @IBAction func submitOption(_ sender: UIButton) {
        submitButton.endEditing(true)
        print(submitButton.textInputMode!)
        print("go to the next screen")
        
        let storyboard = UIStoryboard(name: "Start", bundle: Bundle(for: StartViewController.self))
        let secondVC = storyboard.instantiateViewController(identifier:("StartViewController"))
        self.present(secondVC, animated: true, completion: nil)
        
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        }
        else {
            textField.placeholder = "type something"
            return false
        }
              
    }
    
}
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


