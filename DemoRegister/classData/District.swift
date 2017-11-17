//
//  DataFromDistric.swift
//  DemoRegister
//
//  Created by cuong on 11/15/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import Foundation
class District {
    
    var name: String
    var cityCode: Int
    var code: Int
    
    init(name: String, cityCode: Int,code : Int) {
        self.code = code
        self.cityCode = cityCode
        self.name = name
    }
    
    convenience init?(dictionary: Dictionary<String,Any>) {
        guard let name = dictionary["Name"] as? String,
            let districtCode = dictionary["DistrictCode"] as? Int,
            let cityCode = dictionary["CityCode"] as? Int
            else { return nil }
        self.init(name: name, cityCode: cityCode, code: districtCode)
    }
}


