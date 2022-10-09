//
//  ViewController.swift
//  exercicioNavegacao
//
//  Created by Tiago & Karina on 06/10/22.
//- (instancetype)initWithFrame:(NSRect)frame


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        // o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedGoScreen03Button(_ sender: UIButton) {
    
    }
    
    
}




