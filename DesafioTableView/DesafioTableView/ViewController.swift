//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Tiago & Karina on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var cars:[Car] = [
        Car(image: UIImage(named: "fiat") ?? UIImage(), nameBrand: "FIAT"),
        Car(image: UIImage(named: "chevrolet") ?? UIImage(), nameBrand: "CHEVROLET"),
        Car(image: UIImage(named: "ford") ?? UIImage(), nameBrand: "FORD"),
        Car(image: UIImage(named: "volvo") ?? UIImage(), nameBrand: "VOLVO")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupcell(car:cars[indexPath.row])
        
        return cell ?? UITableViewCell()
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        cars.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

extension ViewController:UITableViewDelegate{
    
}
