//
//  ModelTemplate.swift
//  TableView_BaiMauMVC
//
//

import Foundation

class database {
    var name: String
    var listToDo: [String]
    
    init(name: String, listToDo: [String]) {
        self.name = name
        self.listToDo = listToDo
    }
    
    class func section1() -> database{
        return database(name: "Group 1", listToDo: [
            "Task1", "Task2"
            ])
    }
    
    class func section2() -> database{
        return database(name: "Group 2", listToDo: [
            "Task3", "Task4", "Task5"
            ])
    }
    
    
    class func getList() -> [database]{
        return [self.section1(), self.section2()]
    }
}
