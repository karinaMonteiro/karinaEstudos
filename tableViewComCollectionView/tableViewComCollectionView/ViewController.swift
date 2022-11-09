//
//  ViewController.swift
//  tableViewComCollectionView
//
//  Created by Tiago & Karina on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var listImage2:[String] = ["car1","car2","car3","car4","car5","car6"]
    var listImage1:[String] = ["moto1","moto2","moto3","moto4","moto5", "moto6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
        tableView.separatorStyle = .none
    }
    
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as? CarTableViewCell
            cell?.setupCell(title: "Motos Esportivas", listImage: self.listImage1)
            return cell ?? UITableViewCell()
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as? CarTableViewCell
            cell?.setupCell(title: "Carros Esportivos", listImage: self.listImage2)
            return cell ?? UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 350
    }
}
