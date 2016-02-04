//
//  Additions.swift
//  ToDo
//
//  Created by Lacey Vu on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

extension String {
    static func archivePath() -> String {
    guard let archivePath = NSURL.archiveURL().path else { fatalError("Can't get archive path. Error origin: \(__FUNCTION__)") }
    return archivePath
    }
}

    extension NSURL {
        class func documentsDirectory() -> NSURL {
            guard let directory = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first else { fatalError("Error getting documents directory. Error Origin: \(__FUNCTION__)") }
            
            return directory
        }
        class func archiveURL(storeId: String = "archive" ) -> NSURL {
            return self.documentsDirectory().URLByAppendingPathComponent(storeId)
            //we all seemed kinda lost in this area
        }
        
        
}
