//
//  datePickerDropdown.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 19.10.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func loadDropdown(data:[String],onSelect selectionHandler: @escaping (_ selectedText : String)-> Void) {
        self.inputView = datePicker(pickerDate: data, dropdownField: self, Onselect: selectionHandler )
    }

}
