//
//  ViewController.swift
//  primeiroProjetoTableView
//
//  Created by Tiago & Karina on 20/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["karina","Tiago","Carlos","Camila","Patrick","Valquiria","felipe","Guilherme"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
        // Do any additional setup after loading the view.
    }
    
    func configTableView (){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(nameTableViewCell.nib(), forCellReuseIdentifier: nameTableViewCell.identifier)
    }
}

extension ViewController:UITableViewDataSource {
    //indica qtd de linhas por sessao***********
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    //popular a celula************************* retorna a instancia de uma celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: nameTableViewCell.identifier, for: indexPath) as? nameTableViewCell
        cell?.setupcell(name: data[indexPath.row])
        
        return  cell ?? UITableViewCell()
    }
}

extension ViewController:UITableViewDelegate {
    
}

