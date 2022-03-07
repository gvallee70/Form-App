//
//  DetailsViewController.swift
//  Form App
//
//  Created by Gwendal on 07/03/2022.
//

import UIKit

class DetailsViewController: UIViewController {
    var email: String?
    var password: String?
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let email = email {
            emailLabel.text = "Email: \(email)"
        }
        
        if let password = password {
            passwordLabel.text = "Password: \(password)"
        }

    }



}
