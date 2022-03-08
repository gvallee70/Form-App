//
//  SignInViewController.swift
//  Form App
//
//  Created by Gwendal on 07/03/2022.
//

import UIKit
import iForm

class SignInViewController: UIViewController, UITextFieldDelegate {

    private var form: iForm = iForm()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var formular: SignInForm = SignInForm()
        
        //Initialize sign-in form
        formular = form.initSignInForm(
            actionToPerform : UIAction() { _ in
                let textFieldsValues = self.form.getTextFieldsValues(from: self.form.getAllTextFields(from: formular))
                
                let email = textFieldsValues["Email"]
                let password = textFieldsValues["Password"]

                let detailsVC = DetailsViewController()
                detailsVC.email = email
                detailsVC.password = password
                
                self.navigationController?.pushViewController(detailsVC, animated: true)
            })
        
        //if you want to personalize an element of a preset form
        formular.emailTextField.setBackgroundColor(.red)
        
        form.display(formular, on: self.view, withConstraints: Constraints(horizontal: 0, vertical: -250, width: 0, height: 50))

}

//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == form.signInForm.emailTextField {
//            textField.resignFirstResponder()
//            form.signInForm.passwordTextField.becomeFirstResponder()
//        } else if textField == form.signInForm.passwordTextField {
//            textField.resignFirstResponder()
//        }
//            return true
//    }


}
