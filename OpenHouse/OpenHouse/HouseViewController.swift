//
//  HouseViewController.swift
//  Open House
//
//  Created by Arjun Chib on 11/9/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {

    override func loadView() {
        super.loadView()
        
        view.backgroundColor = UIColor.white
        // Be sure to pull address from the 
        title = "The House"
        
        navigationItem.rightBarButtonItem = editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
