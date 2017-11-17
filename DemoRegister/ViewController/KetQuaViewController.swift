//
//  KetQuaViewController.swift
//  DemoRegister
//
//  Created by cuong on 11/17/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class KetQuaViewController: UIViewController {
    
    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var districtLable: UILabel!
    @IBOutlet weak var gioitinhLable: UILabel!
    @IBOutlet weak var ageLable: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLable.text = DataServices.shared.KQ["City"] as? String
        districtLable.text = DataServices.shared.KQ["Distric"] as? String
        gioitinhLable.text = DataServices.shared.KQ["GioTinh"] as? String
        
        guard let ageKQ = DataServices.shared.KQ["Age"] as? Int else { fatalError() }
        ageLable.text = String(describing: ageKQ)
        
    }
    

}
