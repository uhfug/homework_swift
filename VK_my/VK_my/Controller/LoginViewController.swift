//
//  LoginViewController.swift
//  VK_my
//
//  Created by Кирилл Терновский on 11.05.2022.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.backgroundColor = .none
        
        
    }
   

    @IBAction func GroupButton(_ sender: Any) {
        performSegue(withIdentifier: "Group", sender: nil)
    }
    @IBAction func tapButton(_ sender: Any) {
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text,
              login == "",
              password == "" else {
                  showError(message: "Error password")
                  return}
        
        performSegue(withIdentifier: "Login", sender: nil)

    }
    
    
}
