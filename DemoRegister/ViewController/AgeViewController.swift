//
//  AgeViewController.swift
//  DemoRegister
//
//  Created by cuong on 11/17/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController {
    
    @IBOutlet weak var mPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mPicker.selectRow(17, inComponent: 0, animated: true)
    }
    
}

extension AgeViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DataServices.shared.arrayAge.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(DataServices.shared.arrayAge[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DataServices.shared.selectPickerView = DataServices.shared.arrayAge[row]
    }
    
}
