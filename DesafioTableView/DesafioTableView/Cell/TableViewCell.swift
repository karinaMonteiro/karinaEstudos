//
//  TableViewCell.swift
//  DesafioTableView
//
//  Created by Tiago & Karina on 25/10/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameBrandLabel: UILabel!
    
    @IBOutlet weak var userImageView: UIImageView!
    static let identifier:String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupcell(car:Car){
        nameBrandLabel.text = car.nameBrand
        userImageView.image = car.image
    }
    
}
