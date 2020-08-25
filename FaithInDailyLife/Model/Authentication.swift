//
//  Authentication.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 04.08.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import Foundation

struct Authentication {
    let authenticateAPI = "https://sgi-rails.herokuapp.com/user_token"
    
    func fetch(Username: String,Password: String) {
        let UrlString = "\(authenticateAPI)&q=\(Username)&q=\(Password)"
        performRequest(urlString: UrlString)
        
    }
    
    func performRequest(urlString : String){
        //1. Create a URL
          if let url = URL(string: urlString){
              //2. Create a URLSession
            let session = URLSession(configuration: .default)
            //3. Give the session a Task
            let task = session.dataTask(with: url, completionHandler: handle(data:urlresponse:error:))
            //4. Start the task
            task.resume()
            
        }
    }
    
    func handle(data: Data?, urlresponse: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
        
    }
}
