//
//  tela03.swift
//  transicaoDeDadosEntreTelas3
//
//  Created by Tiago & Karina on 19/10/22.
//

import UIKit

class tela03: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
   
    
    var email: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = email
    }
    
}
