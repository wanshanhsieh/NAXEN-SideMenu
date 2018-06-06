//
//  MenuController.swift
//  SideMenu
//
//  Created by sandra on 2018/5/30.
//  Copyright © 2018年 sandra. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
  
    @IBOutlet weak var cellText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

class MenuController: UITableViewController {
    
    var labels = ["狀態","設定","手機錄製","裝置錄製","檔案管理","裝置說明","中斷連線"]
    var cellIDs = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellIDs = ["Cell_MobileStatus",
                  "Cell_Setting",
                  "Cell_MobileRecord",
                  "Cell_DeviceRecord",
                  "Cell_FileManage",
                  "Cell_DeviceMan",
                  "Cell_Disconnect"]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellIDs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIDs[indexPath.row], for: indexPath) as! CustomTableViewCell
        cell.cellText?.text = labels[indexPath.row]
        
        return cell
    }
}
