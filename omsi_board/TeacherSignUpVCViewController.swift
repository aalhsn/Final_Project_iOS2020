//
//  TeacherSignUpVCViewController.swift
//  omsi_board
//
//  Created by mahmood almohri on 2/8/20.
//  Copyright © 2020 Abdullah. All rights reserved.
//

import UIKit

class TeacherSignUpVCViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var teacherIDField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterButton() {
        if let firsName = firstNameField, let lastName = lastNameField, let username = usernameField, let email = emailField, let password = passwordField, let teacherID = teacherIDField
        {
            //Add the networking function
            //signUp(firstName, lastName, username, password, email, password, teacherID)
        }
    }
    
    

}
