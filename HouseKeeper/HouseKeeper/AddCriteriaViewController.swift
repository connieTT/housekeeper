//
//  AddCriteriaViewController.swift
//  Open House
//
//  Created by Arjun Chib on 11/11/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import UIKit

class AddCriteriaViewController: UIViewController {
    
    // initiate custom primitive pallet
    let redColor = UIColor(red:0.95, green:0.35, blue:0.35, alpha:1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup view primitives
        view.backgroundColor = redColor
        
        // title
        let title = UILabel()
        title.text = "New Criterion"
        title.textColor = UIColor.white
        
        // value
        let value = UITextField()
        value.placeholder = "Value"
        value.borderStyle = UITextBorderStyle.roundedRect
        value.layer.borderColor = UIColor.black.cgColor
        value.layer.borderWidth = 1.0
        
        // submission button
        let submit = UIButton()
        submit.setTitle("Add", for: UIControlState.normal)
        submit.setTitleColor(UIColor.white, for: UIControlState.normal)
        submit.backgroundColor = redColor
        submit.addTarget(self, action: #selector(self.addCriterion), for: .touchUpInside)
        
        // cancellation button
        let cancel = UIButton()
        cancel.setTitle("Cancel", for: UIControlState.normal)
        cancel.setTitleColor(UIColor.white, for: UIControlState.normal)
        cancel.backgroundColor = redColor
        cancel.addTarget(self, action: #selector(self.cancel), for: .touchUpInside)
        
        // add primitives to the view
        view.addSubview(title)
        view.addSubview(value)
        view.addSubview(submit)
        view.addSubview(cancel)
        
        // Contrain primitives using SnapKit
        // title
        title.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(20)
        }
        // value
        value.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        // submit
        submit.snp.makeConstraints { (make) in
            make.right.equalTo(0)
            make.width.equalTo(view.frame.width / 2)
            make.bottom.equalTo(0)
        }
        // cancel
        cancel.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.width.equalTo(view.frame.width / 2)
            make.bottom.equalTo(0)
        }
    }
    
    // submission function for adding a completed criterion
    func addCriterion(submit: AnyObject) {
        // Return house data to storage
        // COMPLETE
        
        // Dismiss Modal ViewController
        self.dismiss(animated: true, completion: nil)
    }
    
    func cancel(submit: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
