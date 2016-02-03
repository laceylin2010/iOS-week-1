//
//  Todo Tasks.swift
//  ToDo
//
//  Created by Lacey Vu on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol TaskDo: class
{
    typealias Object: Todo, NSCoding
    
    var task: [Object] { set get }
    
    func add(object: Object)
    func remove(object: Object)
    func removeAllTasks()
    func allTasks() -> [Object]
}

extension TaskDo
{
    func add(object: Object)
    {
        self.task.append(object)
        print("This is adding")
        print("We have \(self.task.count)")
    
    }
    func remove(object: Object)
    {
        self.task = self.task.filter({ (otherObject) -> Bool in
            return object.identifier != otherObject.identifier
            })
        }
    func removeAllTasks()
    {
        self.task.removeAll()
    }
    func allTasks() -> [Object]
    {
        return self.task
    }
}


    

