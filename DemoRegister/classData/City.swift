//
//  File.swift
//  DemoRegister
//
//  Created by cuong on 11/15/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import Foundation
class City{
    
    var name: String
    var code: Int
    init(name: String, code: Int) {
        self.name = name
        self.code = code
    }
    
    convenience init?(dictionary: Dictionary<String,Any>) {
        guard let name = dictionary["Name"] as? String, let cityCode = dictionary["CityCode"] as? Int else { return nil}
        self.init(name: name, code: cityCode)
    }
    
}
