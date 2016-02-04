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
    let taskDate: NSDate
    let identifier: String
    
    init(taskName: String, taskDate: NSDate, id: String = NSUUID().UUIDString)
    {
        self.taskName = taskName
        self.taskDate = taskDate
        self.identifier = id
    }

    convenience required init?(coder aDecoder: NSCoder)
    {

        guard let taskName = aDecoder.decodeObjectForKey("taskName") as? String else{
            fatalError("Something is wrong")
        }
        
        guard let taskDate = aDecoder.decodeObjectForKey("taskDate") as? NSDate else {
            fatalError("Task Date is not an Int")
        }
 
        guard let identifier = aDecoder.decodeObjectForKey("id") as? String else {
            fatalError()
        }
        
        self.init(taskName: taskName, taskDate: taskDate, id: identifier)
       
    }
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.taskName, forKey: "taskName")
        aCoder.encodeObject(self.taskDate, forKey: "taskDate")
        aCoder.encodeObject(self.identifier, forKey: "id")
    }
}

    