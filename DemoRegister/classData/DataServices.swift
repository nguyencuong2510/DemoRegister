//
//  ReadFileCitys.swift
//  DemoRegister
//
//  Created by cuong on 11/16/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import Foundation
class DataServices {
    static let shared = DataServices()
    
    //MARK: finish
    var KQ: [String : Any] = ["City": "AAA","Distric": "AAA", "GioTinh": "AAA", "Age": 18]
    
    var selectCity: String?{
        didSet{
            if let select = selectCity {
                KQ["City"] = select
            }
        }
    }
    
    
    //MARK: Load Citys
    var selectedCityCode : Int? {
        didSet {
            if selectedCityCode != nil {
                displayDistrict = districts.filter({$0.cityCode == selectedCityCode!})
            }
        }
    }
    
    var displayDistrict: [District] = []
    
    var cities: [City] {
        get {
            if _cities == nil {
                loadCityList()
            }
            return _cities ?? []
        }
        set {
            _cities = newValue
        }
    }
    
    private var _cities: [City]?
    
    
    func loadCityList() {
        
        guard let dictionary = PlistServices().getDictionaryFrom(plist: "Cities.plist") else {
            return
        }
        guard let cityDictionaries = dictionary["Cities"] as? [Dictionary <String, Any>] else {return }
        _cities = []
        for cityDictionary in cityDictionaries {
            if let city = City(dictionary: cityDictionary) {
                _cities?.append(city)
            }
        }
    }
    
    //MARK: Load Districts
    var selectDistric: String?{
        didSet{
            if let select = selectDistric {
                KQ["Distric"] = select
            }
        }
    }
    
    var districts: [District] {
        get {
            if _districts == nil {
                loadDistrictList()
            }
            return _districts ?? []
        }
        set {
            _districts = newValue
        }
    }
    
    private var _districts: [District]?
    
    
    func loadDistrictList() {
        
        guard let dictionary = PlistServices().getDictionaryFrom(plist: "Districts.plist") else {
            return
        }
        guard let districtDictionaries = dictionary["Districts"] as? [Dictionary <String, Any>] else {return }
        _districts = []
        for districtDictionary in districtDictionaries {
            if let city = District(dictionary: districtDictionary) {
                _districts?.append(city)
            }
        }
    }
    //MARK: Gioi Tinh
    var gioiTinh: String?{
        didSet{
            if let select = gioiTinh {
                KQ["GioTinh"] = select
            }
        }
    }
    
    //MARK: AGE Select
    var arrayAge: [Int] = Array(1...100)
    var selectPickerView: Int? = 18{
        didSet{
            if let select = selectPickerView {
                KQ["Age"] = select
            }
        }
    }
    
    
}
