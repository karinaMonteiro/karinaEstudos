//
//  ViewController.swift
//  lifeCycle
//
//  Created by Tiago & Karina on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print(#function)
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        
        // exibindo NAVIGATION de maneira programatica
        let vcTela02 = UIStoryboard(name: "tela02", bundle: nil).instantiateViewController(withIdentifier: "tela02") as? tela02
        
        vcTela02?.name = "\(nameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        
        //o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(vcTela02 ?? UIViewController(), animated: true)
    }
}







