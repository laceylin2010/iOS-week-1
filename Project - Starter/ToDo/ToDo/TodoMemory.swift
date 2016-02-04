//
//  TodoMemory.swift
//  ToDo
//
//  Created by Lacey Vu on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

//trying to see if there is data at the archive URL. If there is data lets archive it as an array of objects. If that succeeeds we assign them and creting an epmty array of objects. 



import Foundation

class TodoMemory: TaskDo
{
    typealias Object = Todo
    
    var task = [Object]()
    
    static let shared = TodoMemory()
    
    private init()
    {
        guard let data = NSData(contentsOfURL: NSURL.archiveURL()) else {
            self.task = [Object]()
            return
    }
        guard let storedObject = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [Object] else {
            self.task = [Object]()
            return
        }
        self.task = storedObject
    }
}