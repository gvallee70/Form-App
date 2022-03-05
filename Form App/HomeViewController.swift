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

        let formular = form.addSignInForm()
        self.view.addSubview(formular)

        formular.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: -50)
        

        self.view.addConstraints([horizontalConstraint, verticalConstraint])

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
