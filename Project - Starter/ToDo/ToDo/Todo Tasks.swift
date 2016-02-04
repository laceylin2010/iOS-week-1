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
    func removeObjectAtIndexPath(index: NSIndexPath)
    func removeAllTasks()
    func allTasks() -> [Object]
    func save()
    func objectAtIndex(index: Int) -> Object?
    func count() -> Int
    
}

extension TaskDo
{
    func add(object: Object)
    {
        self.task.append(object)
        print("This is adding")
        print("We have \(self.task.count)")
        self.save()
    
    }
    func remove(object: Object)
    {
        self.task = self.task.filter({ (otherObject) -> Bool in
            return object.identifier != otherObject.identifier
            })
        }
    func removeObjectAtIndexPath(index: NSIndexPath)
    {
        self.task.removeAtIndex(index.row)
        self.save()
    }
    func removeAllTasks()
    {
        self.task.removeAll()
        self.save()
    }
    func allTasks() -> [Object]
    {
        return self.task
    }
    func save()
    {
        NSKeyedArchiver.archiveRootObject(self.task, toFile: String.archivePath())
    }
    func count() -> Int
    {
        return self.task.count
    }
    
    func objectAtIndex(index: Int) -> Object?
    {
        return self.task[index]
    }
}




    

