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

        let formular = form.addSignInForm(parentView: view)
        self.view.addSubview(formular)

        //formular.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: formular, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: -50)
        

        self.view.addConstraints([horizontalConstraint, verticalConstraint])
        
        self.view.isUserInteractionEnabled = true
        
        /*let form = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height));
        
        let textField = UITextField(frame: CGRect(x: 20, y: 100, width: 200, height: 25))
        let button = UIButton(frame: CGRect(x: 20, y: 125, width: 200, height: 25));
        button.setTitle("Hello world", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(hello), for: .touchUpInside)
        
        textField.placeholder = "Test"
        textField.backgroundColor = .green
        
        form.addSubview(textField)
        form.addSubview(button)
        self.view.addSubview(form)*/

    }
    
    @objc
    func hello() {
        print("hello world");
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
