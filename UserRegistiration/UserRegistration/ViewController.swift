//
//  ViewController.swift
//  UserRegistration
//
//  Created by Vahit Yenihayat on 21.02.2022.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        

}
    @objc func hideKeyboard() {
        
        
        view.endEditing(true)
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
     
        
        if userNameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username Not Found")
            
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password Not Found!")
        } else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error!", messageInput: "Password Do Not Match!")
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
    
    var unhideButtonPressed = true
    
    @IBAction func unhidePressed(_ sender: UIButton) {
    
        if unhideButtonPressed == true {
            passwordText.isSecureTextEntry = false
        } else {
            passwordText.isSecureTextEntry = true
        }

        unhideButtonPressed = !unhideButtonPressed
    }
   var unhideButtonPressed2 = true
    
    @IBAction func unhideButtonPressed2(_ sender: UIButton) {
        if unhideButtonPressed2 == true {
                    password2Text.isSecureTextEntry = false
        } else {
                    password2Text.isSecureTextEntry = true
        }

        unhideButtonPressed2 = !unhideButtonPressed2
    }
    
}
