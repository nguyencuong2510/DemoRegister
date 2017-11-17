//
//  ViewController.swift
//  DemoRegister
//
//  Created by cuong on 11/12/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class GioiTinhViewController: UIViewController {
    
    @IBOutlet var btnName: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonClick(sender: UIButton){
        btnName.forEach{ $0.isSelected = false
            sender.setTitleColor(UIColor.black, for: .selected)
        }
        sender.isSelected = true
        sender.setTitleColor(UIColor.black, for: .selected)
//        var gender = sender.titleLabel?.text
//        for (_, _) in (gender?.characters.enumerated())! {
//            for character in "◎ ".characters {
//                if let j = gender?.characters.index(of: character) {
//                    gender?.remove(at: j)
//                }
//            }
//        }
//        print(gender!)
        
        DataServices.shared.gioiTinh = sender.currentTitle
        performSegue(withIdentifier: "ShowAge", sender: sender)
    }
    
}




