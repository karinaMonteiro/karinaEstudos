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
        performSegue(withIdentifier:"tela2", sender: nil)
    }
    
}

