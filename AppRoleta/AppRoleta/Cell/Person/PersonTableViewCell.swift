//
//  PersonTableViewCell.swift
//  AppRoleta
//
//  Created by Tiago & Karina on 25/11/22.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    
    static let  identifier: String = "PersonTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .black
        nameLabel.textColor = .white
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    func setupCell(data: Person) {
        personImage.image = UIImage(named:data.image)
        nameLabel.text = data.name
    }
}
