//
//  ViewDataSource.swift
//  TableView_BaiMauMVC
//
//

import UIKit

extension ViewController: UITableViewDataSource {    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list[section].listToDo.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.list[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        let toDo = self.list[section].listToDo[indexPath.row]
        
        let cell = self.tblListToDo.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.configure(name: toDo)
        
        return cell
    }
}
