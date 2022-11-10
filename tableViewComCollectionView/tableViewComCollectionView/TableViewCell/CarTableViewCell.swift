//
//  CarTableViewCell.swift
//  tableViewComCollectionView
//
//  Created by Tiago & Karina on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let  identifier: String = "CarTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    var data: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configCollectionView()
    }
    
    func configCollectionView(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        if let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
    }
    
    func setupCell(data:Vehicle) {
        self.titleLabel.text = data.title
        self.data = data.list
    }
}

extension CarTableViewCell:UICollectionViewDelegate{
}

extension CarTableViewCell:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(nameImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.contentView.frame.width, height: collectionView.frame.height)
    }
}
extension CarTableViewCell:UICollectionViewDelegateFlowLayout {
    
}
