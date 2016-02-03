//
//  TodoMemory.swift
//  ToDo
//
//  Created by Lacey Vu on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class TodoMemory: TaskDo
{
    typealias Object = Todo
    
    var task = [Object]()
    
    static let shared = TodoMemory()
    
    private init() {}
    
}