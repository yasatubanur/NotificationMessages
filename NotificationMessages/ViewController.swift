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
        if emailTextField?.text == ""{
            notification(title: "Email Error", message: "Please enter an email!")
        }else if passwordTextField?.text == ""{
            notification(title: "Password Error", message: "Please enter password!")
        }else if password2TextField?.text == ""{
            notification(title: "Password Error", message: "Please enter password again")
        }else if passwordTextField?.text != password2TextField?.text{
            notification(title: "Password Eror", message: "Please check passwords")
        }else{
            notification(title: "Done", message: "Saved!")
        }
    }
    
    func notification(title: String, message: String){
        let notification = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okeyButton = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
        }
        notification.addAction(okeyButton)
        self.present(notification, animated: true, completion: nil)
    }
    
}

