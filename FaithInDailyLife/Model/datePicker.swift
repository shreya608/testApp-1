//
//  datePicker.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 27.09.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import Foundation
import SwiftUI

class datePicker: UIPickerView,UIPickerViewDataSource,UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           switch component {
           case 0:
               return 24
           case 1,2:
               return 60
           default:
               return 0
           }
          }
    
    var pickerData : [String]!
    var pickerTextField : UITextField!
    var selectionHandler :  ((_ selectedText: String) -> Void)?
    var hour:Int = 0
    var minute:Int = 0
    

    init(pickerData:[String],dropdownField: UITextField){
     
        self.pickerData = pickerData
        self.pickerTextField = dropdownField
        super.init(frame: CGRect.zero)
        
        self.delegate = self
        self.dataSource = self
        
        DispatchQueue.main.async {
            if pickerData.count > 0 {
                print("the count of an item",pickerData.count)
                self.pickerTextField.text = self.pickerData[0]
                self.pickerTextField.isEnabled = true
                
            } else {
                self.pickerTextField.text = nil
                self.pickerTextField.isEnabled = true
                
            }
        }
        
}
    convenience  init(pickerDate:[String],dropdownField: UITextField, Onselect selectionHandler: @escaping (String)-> Void) {
        
        self.init(pickerData: pickerDate,dropdownField: dropdownField)
        self.selectionHandler = selectionHandler
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}

 
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.width/3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "\(row) Hour"
        case 1:
            return "\(row) Minute"
        default:
            return ""
        }
    }
   
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
             case 0:
           return hour = row
             case 1:
          return minute = row
             default:
             break;
        
    }
 
    }


    
}


//    func sethour() -> String {
//        var onRowSelected: ((UInt) -> Void)?
//        for hours in 1...23 {
//            let minute = hours*60
//            let seconds = hours*60*60
//            //var time = 0
            //  time.append
                
           //return time
           
             
   //     let dataSource = (2...24).map {
     //          (title: "rides.hourly.duration".localized(args: String($0)), hours: UInt($0))
       //      }
            
        //var picker: UIPickerView?
            

          //  final class DurationSelectPicker: TapView {
              
            //  var onRowSelected: ((UInt) -> Void)?
              
              //fileprivate let dataSource = (2...24).map {
                //(title: "rides.hourly.duration".localized(args: String($0)), hours: UInt($0))
              //}
              //private var picker: UIPickerView?
              
              //override init(frame: CGRect) {
//              ÷



