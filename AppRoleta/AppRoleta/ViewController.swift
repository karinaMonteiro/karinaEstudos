//
//  ViewController.swift
//  AppRoleta
//
//  Created by Tiago & Karina on 24/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var prizeDrawButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var listPerson:[Person] = []
    var listImage: [String] = ["Image-1","Image-2","Image-3","Image-4","Image-5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configTextEndCollors()
    }
    func configTextEndCollors() {
        nameTextField.delegate = self
        tableView.backgroundColor = .black
    }
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView .register(EmptyStateTableViewCell.nib(), forCellReuseIdentifier: EmptyStateTableViewCell.identifier)
        tableView .register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
    }
    
    @IBAction func tappedPrizeDrawButton(_ sender: UIButton) {
    }
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        listPerson.append(Person(name: textField.text ?? "", image: listImage.randomElement() ?? ""))
        tableView.reloadData()
        return true
    }
}
extension ViewController: UITableViewDelegate {}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if listPerson.count == 0 {
            return 1
        } else {
            return listPerson.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if listPerson.count == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmptyStateTableViewCell.identifier) as? EmptyStateTableViewCell
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier) as? PersonTableViewCell
            cell?.setupCell(data: listPerson[indexPath.row])
            return cell ?? UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if listPerson.count == 0 {
            return 240
        } else {
            return 90
        }
        
    }
}
