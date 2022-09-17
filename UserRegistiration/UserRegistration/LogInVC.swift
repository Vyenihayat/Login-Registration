//
//  LogInVC.swift
//  UserRegistration
//
//  Created by Vahit Yenihayat on 7.09.2022.
//

import UIKit

class LogInVC: UIViewController {

    @IBOutlet weak var userLogIn: UITextField!
    @IBOutlet weak var logInPasswordText: UITextField!
    @IBOutlet weak var forgotYourPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
            }
    
    
    
    @IBAction func logInButtonClicked(_ sender: UIButton) {
        
        if userLogIn.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username Not Found")
            
        }else if logInPasswordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password Not Found!")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
    }
        
    }
    func makeAlert(titleInput: String, messageInput: String) {
    let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
    let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
    alert.addAction(okButton)
    self.present(alert, animated: true, completion: nil)
        
}
    @objc func hideKeyboard() {
        
        
        view.endEditing(true)
    }
    
    
    
    var unHideButtonClicked = true

    @IBAction func unHideButtonClicked(_ sender: UIButton) {
        
        if unHideButtonClicked == true {
            
            logInPasswordText.isSecureTextEntry = false
        } else {
            logInPasswordText.isSecureTextEntry = true
        }

        unHideButtonClicked = !unHideButtonClicked
        
    }
}
