//
//  LoginViewController.swift
//  Open House
//
//  Created by Arjun Chib on 11/9/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UserViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "Login"
        button.setTitle("Sign In", for: .normal)
        switchScreen.setTitle("Don't have an account?", for: .normal)
        skip.setTitle("Skip sign in", for: .normal)
        
        button.addTarget(self, action: #selector(LoginViewController.handleLogin), for: .touchUpInside)
    }
    
    func handleLogin() {
        if !isValidEmail(emailString: email.text!) {
            alert(title: "Login Failed", message: "Invalid email.")
        } else if !isValidPassword(passwordString: password.text!) {
            alert(title: "Login Failed", message: "Invalid password.")
        } else {
            let parameters: Parameters = ["email": email.text!, "password": password.text!]
            Alamofire.request(Constant.host + "/createSession", parameters: parameters).responseString { response in
                if ((response.response) != nil) {
                    if response.result.isSuccess && (response.response?.statusCode)! < 400 {
                        self.handleDismiss()
                    } else {
                        self.alert(title: "Login Failed", message: response.result.value!)
                    }
                } else {
                    self.alert(title: "Login Failed", message: "Cannot connect to server.")
                }
            }
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
