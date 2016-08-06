//
//  DataService.swift
//  scheduler-swift
//
//  Created by Brian Park on 2016-08-05.
//  Copyright © 2016 Casting Workbook. All rights reserved.
//

import Foundation
import Alamofire

typealias Completion = (data: AnyObject) -> Void

class DataService {
    static let ds = DataService()
    
    func postSession(username: String, password: String, completed: Completion) {
        let parameters = [
            "username": username,
            "password": password,
            "remember_password": "no",
            "doAction": "mobileactorupload"
        ]
        
        Alamofire.request(.POST, URL_LOGIN, parameters: parameters).responseJSON { (response) in
            completed(data: response.response!)
        }
    }
    
    func getUser(loginResponse: String, completed: Completion) {
        
    }
}