//
//  tela02.swift
//  DesafioTransicaoDeDadosEntreTelas2
//
//  Created by Tiago & Karina on 18/10/22.
//

import UIKit

class tela02: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBOutlet weak var professionLabel: UILabel!
    

    var people:Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = people?.name
        lastNameLabel.text = people?.lastname
        ageLabel.text = people?.age
        professionLabel.text = people?.profession
        // Do any additional setup after loading the view.
    }
    

}

