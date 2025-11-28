//  ViewController.swift
//  Cibertec T1
//  Created by Edgar Daniel Poma Huaman
//  on 11/28/25

import UIKit

class ViewController: UIViewController {
    //Declare components
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterBtn: UIButton!
            
        override func viewDidLoad() {
            super.viewDidLoad()
            print("1️⃣ viewDidLoad - Vista cargada en memoria")
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("2️⃣ viewWillAppear - Antes de aparecer")
        }

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("3️⃣ viewDidAppear - Ya visible")
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            print("4️⃣ viewWillDisappear - Antes de desaparecer")
        }

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            print("5️⃣ viewDidDisappear - Ya desapareció")
        }
        
    
    @IBAction func enterBtn(_ sender: Any) {
        print("Boton Pressed")
        
        let emailTextFieldVar: String = emailTextField.text ?? "empty"
           if(emailTextFieldVar.isEmpty){
               showAlert(message:"Ingresar Email")
            return
           }
           
        let passwordTextFieldVar: String = passwordTextField.text ?? "empty"
        print("password: \(passwordTextFieldVar)")

    }
        
    private func showAlert(title: String = "", message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    private func showActionSheet(title: String = "", message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .actionSheet
        )
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    
}

	
