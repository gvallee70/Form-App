//
//  SignInViewController.swift
//  Form App
//
//  Created by Gwendal on 07/03/2022.
//

import UIKit
import iForm

class SignInViewController: UIViewController {

    private var form: iForm = iForm()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var formular : UIView = UIView()
        
        //Initialize sign-in form
        formular = form.initSignInForm(
            on: self.view,
            withConstraints: Constraints(horizontal: 0, vertical: -250, width: 0, height: 0),
            actionToPerform : UIAction() { _ in
                let textFieldsValues = self.form.getTextFieldsValues(from: self.form.getAllTextFields(from: formular))
                
                let email = textFieldsValues["Email"]
                let password = textFieldsValues["Password"]

                let detailsVC = DetailsViewController()
                detailsVC.email = email
                detailsVC.password = password
                
                self.navigationController?.pushViewController(detailsVC, animated: true)
            })
        
        
        
    }

}
