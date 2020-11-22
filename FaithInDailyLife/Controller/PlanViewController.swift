//
//  PlanViewController.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 17.09.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import UIKit
import SwiftUI

class PlanViewController: UIViewController {
   
    
    @IBOutlet weak var diamokuTargetLabel: UILabel!
    
    
    @IBOutlet weak var diamokuTarget: UITextField!
    
     let durationValue = ["","hour","minute"]

    
   
    @IBOutlet weak var durationField: UIPickerView!
         
    func durationSelected(selectedText: String){
        DispatchQueue.main.async {
            if selectedText == "hour"{
            print("hout")
            }
            else if selectedText == "minute"{
                print("its minute")
                
            }

        }
       
    }
    
 
    


    override func viewDidLoad() {
        super.viewDidLoad()
        diamokuTarget.loadDropdown(data: durationValue, onSelect: durationSelected(selectedText:))
       // view.addSubview(picker)
     
        
       
        
       // picker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Plannedhomevisit(_ sender: Any) {
        
        
    }
    
        
  
    
    
    @IBAction func personalDetermination(_ sender: Any) {
        
        
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        
    }
    /*
   
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

    
  
