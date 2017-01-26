//
//  UserViewController.swift
//  HouseKeeper
//
//  Created by Arjun Chib on 1/25/17.
//  Copyright © 2017 Profectus. All rights reserved.
//

import UIKit
import SnapKit

class UserViewController: UIViewController {
    
    let group = UIView()
    let titleLabel = UILabel()
    let email = TextField()
    let password = TextField()
    let button = UIButton()
    let switchScreen = UIButton()
    let skip = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Style.redColor
        
        // group
        
        // title
        titleLabel.text = "Title"
        titleLabel.textColor = Style.whiteColor
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFontWeightHeavy)
        
        // email
        email.placeholder = "Email"
        email.textColor = Style.whiteColor
        
        // password
        password.placeholder = "Password"
        password.textColor = Style.whiteColor
        
        // button
        button.setTitle("Button", for: .normal)
        button.setTitleColor(Style.redColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: UIFontWeightMedium)
        button.backgroundColor = Style.whiteColor
        button.layer.cornerRadius = Style.buttonRadius
        
        // switchScreen
        switchScreen.setTitle("Switch this screen", for: .normal)
        switchScreen.setTitleColor(Style.whiteColor, for: .normal)
        switchScreen.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        switchScreen.titleLabel?.textAlignment = .center
        
        // skip
        skip.setTitle("Skip", for: .normal)
        skip.setTitleColor(Style.whiteColor, for: .normal)
        skip.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        skip.titleLabel?.textAlignment = .center
        
        
        // insert subviews
        group.addSubview(titleLabel)
        group.addSubview(email)
        group.addSubview(password)
        group.addSubview(button)
        group.addSubview(switchScreen)
        view.addSubview(skip)
        view.addSubview(group)
        
        // make contraints
        titleLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        email.snp.remakeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        password.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.top.equalTo(email.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        
        button.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(50)
            make.top.equalTo(password.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        
        switchScreen.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.top.equalTo(button.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        
        skip.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.bottom.equalTo(view.snp.bottom).inset(20)
            make.centerX.equalToSuperview()
        }
        
        group.snp.makeConstraints { (make) in
            make.width.equalToSuperview().inset(40)
            make.center.equalToSuperview()
            make.height.equalTo(250)
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
