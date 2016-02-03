//
//  Todo.swift
//  ToDo
//
//  Created by Lacey Vu on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Todo: NSObject, NSCoding{
    
    let taskName: String
    let taskDate: String
    let taskInfo: String
    
    let identifier: String
    
    init(taskName: String, taskDate: String, taskInfo: String, id: String = NSUUID().UUIDString)
    {
        self.taskName = taskName
        self.taskDate = taskDate
        self.taskInfo = taskInfo
        self.identifier = id
    }

    convenience required init?(coder aDecoder: NSCoder)
    {
        guard let taskName = aDecoder.decodeObjectForKey("taskName") as? String else{
            fatalError("Task name is not a string?")
        }
        guard let taskDate = aDecoder.decodeObjectForKey("taskDate") as? String else {
    fatalError("Task Date is not an Int")
        }
        guard let taskInfo = aDecoder.decodeObjectForKey("taskDescript") as? String else {
            fatalError("Task Info is not a string")
        }
        guard let identifier = aDecoder.decodeObjectForKey("id") as? String else {
            fatalError()
        }
        
        self.init(taskName: taskName, taskDate: taskDate, taskInfo: taskInfo, id: identifier)
       
    }
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.taskName, forKey: "task name")
        aCoder.encodeObject(self.taskDate, forKey: "task Date")
        aCoder.encodeObject(self.taskInfo, forKey: "taskInfo")
        aCoder.encodeObject(self.identifier, forKey: "id")
    }
}

    