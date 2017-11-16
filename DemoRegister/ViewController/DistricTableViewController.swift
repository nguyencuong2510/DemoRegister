//
//  DistricTableViewController.swift
//  DemoRegister
//
//  Created by cuong on 11/14/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit


class DistricTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataServices.shared.displayDistrict.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = DataServices.shared.displayDistrict[indexPath.row].name
        cell.detailTextLabel?.text = String(DataServices.shared.displayDistrict[indexPath.row].code)
        return cell
    }
    

}
