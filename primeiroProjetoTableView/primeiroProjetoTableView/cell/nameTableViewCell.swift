//
//  nameTableViewCell.swift
//  primeiroProjetoTableView
//
//  Created by Tiago & Karina on 20/10/22.
//

import UIKit

class nameTableViewCell: UITableViewCell {

   
    @IBOutlet weak var nameLabel: UILabel!
    
    static let  identifier: String = "nameTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //ciclo de vida da celula -  como se fosse um viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
// para interacao, animaçao.
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupcell(name:String){
        nameLabel.text = name
    }
}
