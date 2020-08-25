//
//  pickerViewDropdown.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 11.06.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
   // func loadDropdownData (data: [String], city_OnSelect : [String]){
     //   self.inputView = MyPickerView(pickerData: data, dropdownField: self )
       // self.inputView = MyPickerView(pickerData: city_OnSelect, dropdownField: self)
    //}
    func loadDropdownData(data: [String], onSelect selectionHandler : @escaping (_ selectedText: String) -> Void) {
        self.inputView = MyPickerView(pickerData: data, dropdownField: self, onSelect: selectionHandler)
    }
}
