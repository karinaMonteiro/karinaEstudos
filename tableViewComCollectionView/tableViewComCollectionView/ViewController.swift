//
//  ViewController.swift
//  tableViewComCollectionView
//
//  Created by Tiago & Karina on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var vehiclelist: [Vehicle] = [
        Vehicle(
            title: "Motos Esportivas",
            list: ["moto1", "moto2", "moto3", "moto4", "moto5", "moto6"
            ]
        ),
        Vehicle(
            title: "Carros Esportivos",
            list: ["car1", "car2","car3","car4","car5","car6"
            ]
        )
    ]
    
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
        return vehiclelist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
            let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as? CarTableViewCell
        cell?.setupCell(data: vehiclelist[indexPath.row])
            return cell ?? UITableViewCell()
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 350
    }
}
