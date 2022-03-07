//
//  HomeViewController.swift
//  Form App
//
//  Created by Gwendal on 01/03/2022.
//

import UIKit
import iForm

class HomeViewController: UIViewController {

    var form: iForm = iForm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var formular : UIView = UIView()
        formular = form.addSignInForm(parentView: view, actionToPerform : UIAction() { action in
            let textFieldsValues = self.form.getTextFieldsValues(values: self.form.getAllTextFields(from: formular))
            
            print(textFieldsValues)
        })
    
        self.view.addSubview(formular)

        formular.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        let verticalConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: -50)
        
        let widthConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 0)
        
        let heightConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: .height, multiplier: 1, constant: 0)
        

        self.view.addConstraints([horizontalConstraint, verticalConstraint,widthConstraint,heightConstraint])

        
        
    }
}

