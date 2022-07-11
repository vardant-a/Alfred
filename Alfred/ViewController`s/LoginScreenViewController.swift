//
//  LoginScreenViewController.swift
//  Alfred
//
//  Created by Алексей on 11.07.2022.
//

import UIKit

class LoginScreenViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var SingInStackView: UIStackView!
    @IBOutlet var SingUpStackView: UIStackView!
    
    @IBOutlet var selectRegistration: UISegmentedControl!
    @IBOutlet var registerOptions: UITextField!
    
    private var login: String = "log"
    private var password: String = "pass"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singIn()
    }
    
    
    @IBAction func selectRegOption(_ sender: Any) {
        if selectRegistration.selectedSegmentIndex == 0 {
            registerOptions.placeholder = "Enter your Phone"
        } else {
            registerOptions.placeholder = "Enter your Email"
        }
    }
    
    @IBAction func singUpPressed() {
        singUp()
    }
    
    
    
    @IBAction func forgotRegisterData() {
        showAllert(
            title: "Do you need help?",
            message: """
            Your login options:
            username - \(login)
            password - \(password)
            """
        )
    }
}

extension LoginScreenViewController {
    
    
    private func updateUI() {
        [SingInStackView, SingUpStackView].forEach {$0.isHidden = true }
    }
    
    private func singUp() {
        updateUI()
        title = "Sing Up"
        
        SingUpStackView.isHidden = false
        
    }
    
    private func singIn() {
        updateUI()
        title = "Sing In"
        
        SingInStackView.isHidden = false
    }
}

// MARK: - Extension

extension LoginScreenViewController {
    
    private func showAllert(title: String, message: String, textField: UITextField? = nil) {
        let allert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in textField?.text = "" }
        
        allert.addAction(okAction)
        present(allert, animated: true)
    }
}
