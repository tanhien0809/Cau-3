//
//  ViewController.swift
//  TableView_BaiMauMVC

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblListToDo: UITableView!
    
    var list: [database] = database.getList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tblListToDo.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

