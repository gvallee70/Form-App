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
        
        let button = iFormButtonItem(text: "Sign-In form", textColor: .black, backgroundColor: .red, constraints: Constraints(horizontal: 0, vertical: -60, width: 200, height: 100), action: UIAction(){ _ in
            self.navigationController?.pushViewController(SignInViewController(), animated: true)
        })
        
        button.display(on: self.view)

        
    }
}

