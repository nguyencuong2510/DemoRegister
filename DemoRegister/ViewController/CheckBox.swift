//
//  CheckBox.swift
//  DemoRegister
//
//  Created by cuong on 11/17/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit
class CheckBox: UIButton {
    
    let imageOff = UIImage(named: "btnOff")
    let imageOn = UIImage(named: "btnOn")
    
    //Bool property
    var isChecked: Bool = false{
        didSet{
            if isChecked == true {
                self.setImage(imageOn, for: .normal)
            }else{
                self.setImage(imageOff, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(buttonClick(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonClick(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
    
}
