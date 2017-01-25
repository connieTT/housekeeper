//
//  UserViewController.swift
//  HouseKeeper
//
//  Created by Arjun Chib on 1/25/17.
//  Copyright © 2017 Profectus. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    override func loadView() {
        super.loadView()
        
        view.backgroundColor = Style.redColor
        
        // Wrapper
        let wrapper = UIView()
        view.addSubview(wrapper)
        
        wrapper.frame.size.width = 375.0
        wrapper.frame.size.height = 375.0
        
        wrapper.snp.makeConstraints { (make) in
            make.width.equalTo(375.0)
            make.height.equalTo(400.0)
            make.top.equalTo(0)
            make.left.equalTo(0)
        }
        
        // Group
        let group = UIView()
        wrapper.addSubview(group)
        
        group.snp.makeConstraints { (make) in
            make.width.equalToSuperview().inset(100)
            make.top.equalTo(0)
            make.centerX.equalTo(view)
        }
        
        // Title
        let title = UILabel()
        title.text = "Title"
        title.textColor = Style.whiteColor
        title.textAlignment = .center
        group.addSubview(title)
        
        title.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
        }
        
        // Email
        let email = UITextField()
        email.placeholder = "Email"
        email.textColor = Style.whiteColor
        group.addSubview(email)
        
        email.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.top.equalTo(title.snp.bottom)
        }
        
        // Password
        let password = UITextField()
        password.placeholder = "Password"
        password.textColor = Style.whiteColor
        group.addSubview(password)
        
        password.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.top.equalTo(email.snp.bottom)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
