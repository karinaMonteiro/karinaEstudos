//
//  tela02.swift
//  transicaoDeDadosEntreTelas3
//
//  Created by Tiago & Karina on 19/10/22.
//

import UIKit

class tela02: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var people:Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = people?.name
        lastNameLabel.text = people?.lastname
        
        
    }
}
