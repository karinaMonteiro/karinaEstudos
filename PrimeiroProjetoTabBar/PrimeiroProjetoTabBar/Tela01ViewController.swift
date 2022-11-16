//
//  ViewController.swift
//  PrimeiroProjetoTabBar
//
//  Created by Tiago & Karina on 10/11/22.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
      configTableView()
    }
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
    }
    @IBAction func EditarFotoButton(_ sender: UIButton) {
    let pickerPhotoController = UIImagePickerController()
        pickerPhotoController.delegate = self
     present(pickerPhotoController, animated: true)
    }
    @IBAction func addUser(_ sender: UIButton) {
        let user: User = User(name:nameTextField.text ?? "" ,image:userImage.image ?? UIImage())
        users.append(user)
        tableView.reloadData()
    }
}
extension Tela01ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell
        cell?.setupCell(user: users[indexPath.row])
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
        
    }
    
    
}
extension Tela01ViewController:UITableViewDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       if let pickedImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage {
            userImage.image = pickedImage
        }
        picker.dismiss(animated: true)
    }
    
}
