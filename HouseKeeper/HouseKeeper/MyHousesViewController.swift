//
//  MyHousesViewController.swift
//  Open House
//
//  Created by Arjun Chib on 11/9/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import UIKit
import SnapKit

class MyHousesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let houses = ["House 1", "House 2", "House 3"]
    
    override func loadView() {
        super.loadView()
        
        // Self
        
        title = "My Houses"
        
        if (false) {
            let registerViewController = RegistrationViewController()
            present(registerViewController, animated: false, completion: nil)
        }
        
        
        // Table View
        
        let tableView = UITableView()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HouseTableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        
        // Bottom Toolbar
        
        let bottomToolbar = UIToolbar()
        
        let addButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addHouse))
        let cogButtonItem = UIBarButtonItem(image: UIImage(named: "Setting Cog"), style: .plain, target: self, action: #selector(openSettings))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        bottomToolbar.setItems([cogButtonItem, flexibleSpace, addButtonItem], animated: false)
        
        view.addSubview(bottomToolbar)
        
        bottomToolbar.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.width.equalToSuperview()
        }
    }
    
    func addHouse() {
        let modal = AddHouseViewController()
        modal.modalPresentationStyle = .overCurrentContext
        present(modal, animated: true, completion: nil)
    }
    
    func openSettings() {
        present(SettingsViewController(), animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel!.text = houses [indexPath.row]
        cell.imageView?.image = UIImage(named: "Placeholder")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houses.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(HouseViewController(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
