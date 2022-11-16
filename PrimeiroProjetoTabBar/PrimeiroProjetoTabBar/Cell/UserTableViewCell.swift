//
//  UserTableViewCell.swift
//  PrimeiroProjetoTabBar
//
//  Created by Tiago & Karina on 10/11/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    
    static let identifier: String = "UserTableViewCell"
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(user:User) {
        nameLabel.text = user.name
        userImage.image = user.image
    }
    
}
