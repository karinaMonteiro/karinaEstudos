//
//  ViewController.swift
//  DesafioTransicaoDeDadosEntreTelas2
//
//  Created by Tiago & Karina on 18/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var professionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        let vcTela02 = UIStoryboard(name: "tela02", bundle: nil).instantiateViewController(withIdentifier: "tela02") as? tela02
        
        var people:Pessoa = Pessoa(
            name: nameTextField.text ?? "",
            lastname: lastNameTextField.text ?? "",
            age: ageTextField.text ?? "",
            profession: professionTextField.text ?? ""
        )
        
        vcTela02?.people = people

        //o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(vcTela02 ?? UIViewController(), animated: true)
    }

}

struct Pessoa {
    var name:String
    var lastname: String
    var age:String
    var profession: String
}


