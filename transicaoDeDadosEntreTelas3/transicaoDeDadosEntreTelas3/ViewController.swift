//
//  ViewController.swift
//  transicaoDeDadosEntreTelas3
//
//  Created by Tiago & Karina on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "tela02", bundle: nil).instantiateViewController(withIdentifier: "tela02") as? tela02
        
        var karina:Pessoa = Pessoa(
            name: nameTextField.text ?? "",
            lastname: lastNameTextField.text ?? ""
        )
        
        viewController?.people = karina
        
        //o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(viewController ?? UIViewController(), animated: true)
        
    }
    
    
    @IBAction func tappedButton2(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "tela03", bundle: nil).instantiateViewController(withIdentifier: "tela03") as? tela03
        viewController?.email = emailTextField.text ?? ""
        
        //o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(viewController ?? UIViewController(), animated: true)
        
        
    }
    
}

    
