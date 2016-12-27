//
//  ViewController.swift
//  SlideMenu
//
//  Created by Evgeny Vlasov on 12/24/16.
//  Copyright © 2016 Evgeny Vlasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SlideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let slideMenu = SlideMenu(menuWidth: 150, menuItemTitles: ["Home", "User", "Settings"], parentViewController: self)
        
        slideMenu.menuDelegate = self
    }

    func didSelectMenuItem(withTitle title: String, index: Int) {
        
        print("Clicked on \(title), which has index of \(index)")
        if title == "Home" {
            print("User has pressed home")
        }else if index == 3 {
            print("User has pressed 3rd item in the menu")
        }
        
    }



}

