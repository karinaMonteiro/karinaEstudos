//
//  RoletaTableViewCell.swift
//  AppRoleta
//
//  Created by Tiago & Karina on 24/11/22.
//

import UIKit

class EmptyStateTableViewCell: UITableViewCell {
    
    @IBOutlet weak var roletaImage: UIImageView!
    @IBOutlet weak var digiteNameLabel: UILabel!
    
    static let  identifier: String = "EmptyStateTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .black
        digiteNameLabel.text = "Insira os participantes para iniciar uma roleta russa!"
        digiteNameLabel.textColor = .white
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
