//
//  CustomCollectionViewCell.swift
//  tableViewComCollectionView
//
//  Created by Tiago & Karina on 08/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let  identifier: String = "CustomCollectionViewCell"
      static func nib() -> UINib {
          return UINib(nibName: identifier, bundle: nil)
      }
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    func setupCell(nameImage:String){
        self.carImageView.image = UIImage(named: nameImage)
    }
}
