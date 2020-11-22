//
//  LoginViewController.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 28.06.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var enterUsername: UITextField!
    
    
    @IBOutlet weak var enterPassword: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterUsername.delegate = self
        enterPassword.delegate = self

        // Do any additional setup after loading the view.
    }

    
}
   
//MARK: - UITextFieldDelegate
extension LoginViewController:UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(enterUsername.text!)
        print(enterPassword.text!)
        return true
    }
    
    
    
    @IBAction func submitOption(_ sender: UIButton) {
        
        let Authenticate = Authentication(Username: enterUsername.text!, Password: enterPassword.text!)
        let dataValue = Authenticate.performRequest()
        print("print the data",dataValue)
        

         if enterUsername.text != ""{
            if enterPassword.text != "" {
                
                let storyboard = UIStoryboard(name: "Start", bundle: Bundle(for: StartViewController.self))
                       let secondVC = storyboard.instantiateViewController(identifier:("StartViewController"))
                       self.present(secondVC, animated: true, completion: nil)
                
                print(submitButton.textInputMode!)
                print("go to the next screen")
                
            }
         else {
                enterUsername.placeholder = "Please type something"
                enterPassword.placeholder = "Please type something"
                print("Please type something")
    
            }
           
            
        }
        
    
}

}
