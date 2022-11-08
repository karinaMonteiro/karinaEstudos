//
//  CustomCollectionViewCell.swift
//  PrimeiroAppCollectionView
//
//  Created by Tiago & Karina on 07/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    
    static let  identifier: String = "CustomCollectionViewCell"
    //essa funcao usada para registrar table ou collection que usa xib.
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        //ciclo de vida da cell,pode comparar com ViewDidLoad da viewController
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
}
