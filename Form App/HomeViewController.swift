//
//  HomeViewController.swift
//  Form App
//
//  Created by Gwendal on 01/03/2022.
//

import UIKit
import iForm

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textField = iFormTextFieldItem(placeholder: "Placeholder", text: "Texte", contentType: .password)
        textField.setKeyboardType(.phone)
        textField.setConstraints(.init(300, 300))
        textField.setBackgroundColor(.blue)
        self.view.addSubview(textField.display())
        
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
