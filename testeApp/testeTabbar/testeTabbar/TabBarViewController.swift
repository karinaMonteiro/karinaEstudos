//
//  TabBarViewController.swift
//  testeTabbar
//
//  Created by Tiago & Karina on 01/12/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
        
    }
    func configTabBar() {
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
        
    }
    func configItems() {
        guard let items = tabBar.items else { return }
        items[0].image = UIImage(systemName: "house")
        items[0].selectedImage = UIImage(systemName: "house.fill")?.withTintColor(UIColor.orange)
        
        items[1].image = UIImage(systemName: "heart")
        items[1].selectedImage = UIImage(systemName: "heart.fill")
        
        items[2].image = UIImage(systemName: "person")
        items[2].selectedImage = UIImage(systemName: "person.fill")
        
    }
}
