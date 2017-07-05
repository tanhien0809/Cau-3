//
//  TableViewCell.swift
//  TableView_BaiMauMVC
//
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    
    func configure(name: String) {
        self.lbName.text = name
    }
}
