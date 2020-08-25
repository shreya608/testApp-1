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
  
    
    // static func create()->startPlanningViewController {
        
    func city_OnSelect(selectedText: String)
           {
               if selectedText == "Berlin" {
                print("hello")
               }
               else if selectedText == "Frankfurt" {
                print("hello frankfurt")
               }
               else {
                   print("hello cologne")
               }
               }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterCity.loadDropdownData(data: city, onSelect: city_OnSelect(selectedText:))
        
   
       
      //  loadDropdownData(city)
       // let pickerView = UIPickerView()
       // pickerView.delegate = self
        
        //enterCity.inputView = pickerView
        
     //  let label = UILabel()
     //  print("the second view loaded")
     //  view.addSubview(label)
    }
    
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//          return 1
//      }
//
//      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return city.count
//      }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return city[row]
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        enterCity.text = city[row]
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
   // }
   // */

}
