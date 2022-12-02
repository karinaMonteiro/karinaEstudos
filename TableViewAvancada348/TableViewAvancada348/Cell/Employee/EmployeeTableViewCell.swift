//
//  EmployeeTableViewCell.swift
//  TableViewAvancada348
//
//  Created by Caio Fabrini on 27/10/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    
    
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    func setupCell(data: Employee){
        self.userImageView.image = data.imageUser
        self.nameLabel.text = "Nome: \(data.name)"
        self.professionLabel.text = "Profissão: \(data.profession)"
        self.salaryLabel.text = "Salário: \(data.salary)"
        self.ageLabel.text = "Idade: \(String(data.age))"

        if data.isEnableHeart{
            self.heartButton.tintColor = .red
        }else{
            self.heartButton.tintColor = .blue
        }
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        
    }
}
