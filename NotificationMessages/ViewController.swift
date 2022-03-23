//
//  ViewController.swift
//  NotificationMessages
//
//  Created by Tuba Nur YAŞA on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpClicked(_ sender: Any) {
        let notification = UIAlertController(title: "Error", message: "Please try again", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
        }
        
        notification.addAction(okButton)
        
        self.present(notification, animated: true, completion: nil)
    }
    
}

