//
//  EmployeeTableViewCellViewModel.swift
//  TableViewAvancada348
//
//  Created by Tiago & Karina on 02/12/22.
//

import UIKit

class EmployeeTableViewCellViewModel {
    var employee: Employee?
    
    func setEmployee(employee:Employee) {
        self.employee = employee
    }
    var name: String {
        return "nome: \(employee?.name ?? "")"
    }
    var profession: String {
        return "profissão: \(employee?.profession ?? "")"
    }
    var salary: String {
        return "Salário: \(employee?.salary ?? "")"
    }
    var age: String {
        return "Idade: \(employee?.age ?? 0)"
    }
    
}
