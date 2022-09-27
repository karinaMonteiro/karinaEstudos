//
//  ViewController.swift
//  appAlcoolGasolina
//
//  Created by Tiago & Karina on 26/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var precoalcoolTextField: UITextField!
    
    @IBOutlet weak var precoGasolinaTextField: UITextField!
    
    @IBOutlet weak var calcularButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
        configButton()
    }
    
    func configTextField(){
        precoalcoolTextField.delegate = self
        precoGasolinaTextField.delegate = self
    }
    
    func configButton(){
        calcularButton.isEnabled = false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText{
            textField.layer.borderColor = UIColor.lightGray.cgColor
            textField.layer.borderWidth = 2
            
        }else{
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
        }
        
        if precoalcoolTextField.hasText && precoGasolinaTextField.hasText{
            calcularButton.isEnabled = true
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

