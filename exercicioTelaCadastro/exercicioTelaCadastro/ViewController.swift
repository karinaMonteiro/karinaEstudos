//
//  ViewController.swift
//  exercicioTelaCadastro
//
//  Created by Tiago & Karina on 25/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configTextField()
        configButton()
    }
    
    func configTextField(){
        nameTextField.placeholder = "Digite seu nome"
        nameTextField.delegate = self
        
        addressTextField.placeholder = "Digite seu endereco"
        addressTextField.delegate = self
        
        passwordTextField.placeholder = "Digite sua senha"
        passwordTextField.delegate = self
        
        confirmPasswordTextField.placeholder = "Confirme sua senha"
        confirmPasswordTextField.delegate = self
    }
    
    func configButton(){
        //ESSA FUNCAO DESABILITA O BOTAO.
        registerButton.isEnabled = false
    }
    // O CAMPO COMECOU A SER EDITADO
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.systemBlue.cgColor
        textField.layer.borderWidth = 1
    }
     //CAMPO TERMINOU DE SER EDITADO.
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }else{
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
        }
        
       
        
        if nameTextField.hasText && addressTextField.hasText && passwordTextField.hasText && confirmPasswordTextField.hasText {
            
            if passwordTextField.text !=  confirmPasswordTextField.text {
                passwordTextField.layer.borderColor = UIColor.red.cgColor
                passwordTextField.layer.borderWidth = 2
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderWidth = 2
            }else{
                passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
                registerButton.isEnabled = true
            }
            
        }
    }
    //DEVERA RETORNAR
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
}

