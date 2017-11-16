//
//  ViewController.swift
//  DemoRegister
//
//  Created by cuong on 11/12/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayName: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        guard let bundlePath = Bundle.main.path(forResource: "Cities", ofType: "plist") else { return }
        guard let dic = NSDictionary(contentsOfFile: bundlePath) else { return }
        guard let values = dic["Cities"] as? [[String: Any]] else{ return }

        for value in values {
            guard let nameValue = value["Name"] as? String else{ return }
            guard let _ = value["CityCode"] else { return }
            arrayName.append(nameValue)
        }
        print(arrayName)
    }
    
    
    
}




