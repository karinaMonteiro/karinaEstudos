//
//  ViewModel.swift
//  TableViewAvancada348
//
//  Created by Tiago & Karina on 02/12/22.
//
import UIKit
import Foundation

class ViewModel {
    let employeeList: [Employee] = [
        Employee(name: "Caio", age: 30, profession: "Developer IOS", salary: "1.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true),
        Employee(name: "Fabricio", age: 30, profession: "Developer IOS", salary: "1.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false),
        Employee(name: "Alencar", age: 30, profession: "Developer IOS", salary: "1.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false),
        Employee(name: "Jorge", age: 30, profession: "Developer IOS", salary: "1.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false)
    ]
    
    var numberOfRowsInSection: Int {
        return employeeList.count + CellSpec.userTableViewCell.rawValue
    }
    
    func loadCurrentUser() -> User {
        return User(
            image: UIImage(systemName: TypeString.star.rawValue) ?? UIImage(),
            name: TypeString.caio.rawValue
        )
    }
    func loadCurrentEmployee(indexPath:IndexPath) -> Employee {
        return employeeList[indexPath.row - 1]
    }
    func heightForRowAt(indexPath:IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 131
        } else {
            return 164
        }
    }
}
