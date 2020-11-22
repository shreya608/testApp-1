//
//  startPlanningViewController.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 31.05.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import UIKit
import Foundation

class startPlanningViewController : UIViewController {
  //  @IBOutlet weak var enterCity: UITextField!
    
    @IBOutlet weak var enterCity: UITextField!
    
    let city = ["","Berlin","Frankfurt","Cologne"]
    
  
    @IBOutlet weak var enterGroup: UITextField!
    
    let GroupBerlin = ["","BBS","BBN","BBP"]
    
    let GroupFrankfurt = ["","Hello","World"]
    
    let GroupCologne = ["","Hello","World"]
    // static func create()->startPlanningViewController {
    @IBOutlet weak var ConfirmButton: UIButton!
    
    
    func city_OnSelect(selectedText: String)
           {
            DispatchQueue.main.async {
               if selectedText == "Berlin" {
               
                self.enterGroup.loadDropdownData(data: self.GroupBerlin, onSelect: self.Group_OnSelect(selectedText:))
                
               }
               else if selectedText == "Frankfurt" {
                
                self.enterGroup.loadDropdownData(data: self.GroupFrankfurt, onSelect: self.Group_OnSelect(selectedText:))
               }
                
               else {
                
                self.enterGroup.loadDropdownData(data: self.GroupCologne, onSelect: self.Group_OnSelect(selectedText:))
               }
               }
    }
    
    func Group_OnSelect(selectedText: String) {
         print("hello")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterCity.loadDropdownData(data: city, onSelect: city_OnSelect(selectedText:))
        

               
    }
    
    @IBAction func ConfirmPressed(_ sender: UIButton) {
       
        
        let Storyboard = UIStoryboard(name: "Plan", bundle: Bundle(for: PlanViewController.self))
           
        let PlanVC = Storyboard.instantiateViewController(identifier:("PlainViewController"))
        self.present(PlanVC, animated: true, completion: nil)
        
           
    }
}



