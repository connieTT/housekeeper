//
//  RegistrationViewController.swift
//  Open House
//
//  Created by Arjun Chib on 11/9/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import UIKit

class RegistrationViewController: UserViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Registration"
        button.setTitle("Sign Up", for: .normal)
        switchScreen.setTitle("Already have an account?", for: .normal)
        skip.setTitle("Skip registration", for: .normal)
        
        button.addTarget(self, action: #selector(RegistrationViewController.handleRegistration), for: .touchUpInside)
    }
    
    func handleRegistration() {
        dismiss(animated: true, completion: nil)
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
