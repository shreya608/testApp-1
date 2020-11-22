//
//  Authentication.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 04.08.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import Foundation


struct Authentication {
    
    var Username: String
    var Password: String
    
    let authenticateAPI = "https://sgi-rails.herokuapp.com/user_token"
    
    //var parameter = ["username": Username,"password": Password]
    
  
    func performRequest(){
        //1. Create a URL
        let session = URLSession.shared
        let url = URL(string: authenticateAPI)!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let json = [ "auth": [
            "email": "\(Username)",
            "password": "\(Password)"
            
            ]
        ]
        
        let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])
        
        let task = session.uploadTask(with: request, from: jsonData) {
            data, response, error in
            
            if let data = data {
                parseJson(token: data)
            }
                
            if let httpResponse = response as? HTTPURLResponse {
                    print(httpResponse.statusCode)
                }
                
                if error != nil {
                    print(error!)
                    return
                }
            }
        
        task.resume()
        
}

}
        
func parseJson(token : Data){
    let decoder = JSONDecoder()
    do {
        let decodeData = try decoder.decode(fetchToken.self, from: token)
        print (decodeData.jwt)
    }
    catch {
        print(error)
    }
    
}
