//
//  Backend.swift
//  HackathonTempoTeam
//
//  Created by Tom de ruiter on 19/02/16.
//  Copyright © 2016 Rydee. All rights reserved.
//

import UIKit
import Alamofire

class Backend: NSObject {
    
    var baseURL = "http://tempoteam.matthijsotterloo.com/api/"
    
    // POST

    func signUpForThis(email: String, pass: String, fname: String, lname: String, insertion: String) {
        Alamofire.request(.POST, baseURL + "register/", parameters: ["email": email, "first_name" : fname, "last_name" : lname, "password" : pass, "insertion" : insertion, "type" :"employee"])
            .responseData { response in
                let json = JSON(data: response.result.value!)
                print(json["success"])
        }
    }
    
    func updateInfo(description: String, birthdate: NSDate, phone: NSNumber) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let humanReadableDate = dateFormatter.stringFromDate(birthdate)
        
        Alamofire.request(.POST, baseURL + "update_information/1", parameters: ["description": description, "birthdate" : humanReadableDate, "phone" : phone])
            .responseData { response in
                let json = JSON(data: response.result.value!)
                print(json["success"])
        }
    }
    
    func updateAddress(street: String, number: String, postalCode: String, city: String) {
        Alamofire.request(.POST, baseURL + "update_address/1", parameters: ["street": street, "number" : number, "postal_code" : postalCode, "city" : city])
            .responseData {  response  in
                let json = JSON(data: response.result.value!)
                print(json["success"])
                
        }
    }
    
    // working
    
    func postLoginInfo(email: String, pass: String) {
        Alamofire.request(.POST, baseURL + "login", parameters: ["email": email, "password" : pass])
            .responseData { response in
                let json = JSON(data: response.result.value!)
                print(json)
        }
    }
    
    // GET
    
    
    // working
    
    func getUser(userID: Int) {
        Alamofire.request(.GET, baseURL + "get_user/" + String(userID))
            .responseJSON { response in
                debugPrint(response)
        }
    }
}
