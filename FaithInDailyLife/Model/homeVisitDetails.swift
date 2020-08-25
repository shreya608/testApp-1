//
//  homeVisitDetails.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 18.05.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import Foundation

struct MemberDetails{
    var group = String()
    var region = String()
    var membername = String()
    
    init(group: String, region: String, membername: String){
        self.group = group
        self.region = region
        self.membername = membername
        
    }
    
}

var visitMember = MemberDetails(group: "Treptow Park", region: "Berlin", membername: "Shreya")
