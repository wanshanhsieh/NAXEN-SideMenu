//
//  MenuDeviceMan.swift
//  SideMenu
//
//  Created by sandra on 2018/6/2.
//  Copyright © 2018年 sandra. All rights reserved.
//

import Foundation
import UIKit

class MenuDeviceMan: UITableViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
