//
//  SelectionViewController.swift
//  notificationCenterEProtocol
//
//  Created by Tiago & Karina on 23/11/22.
//

import UIKit

protocol SelectionViewControllerProtocol: AnyObject {
    func tappedMacbook()
    func tappedImac()
}

class SelectionViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var macButton: UIButton!
    @IBOutlet weak var imacButton: UIButton!
    
    weak var delegate: SelectionViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedMacButton(_ sender: UIButton) {
        //pra dispersar/voltar pra tela anterior
        dismiss(animated: true)
        //pra navegation voltar  --->
        // navigationController?.popViewController(animated: true)
        // **NotificationCenter.default.post(name: .macbook, object: nil
        delegate?.tappedMacbook()
    }
    
    @IBAction func tapppedImacButton(_ sender: UIButton) {
        dismiss(animated: true)
        // NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.tappedImac()
        
    }
}
