//
//  Camera.swift
//  Astronomy ObjC
//
//  Created by Samantha Gatt on 10/9/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

@objc(SMFCamera)
class Camera: NSObject {
    @objc let id: NSNumber
    @objc let name: NSString
    @objc let roverId: NSNumber
    @objc let fullName: NSString
    
    @objc init(id: NSNumber, name: NSString, roverId: NSNumber, fullName: NSString) {
        self.id = id
        self.name = name
        self.roverId = roverId
        self.fullName = fullName
    }
    
    @objc convenience init?(withDictionary dictionary: [String : Any]) {
        guard let id = dictionary[""] as? NSNumber,
            let name = dictionary[""] as? NSString,
            let roverId = dictionary[""] as? NSNumber,
            let fullName = dictionary[""] as? NSString else { return nil }
        
        self.init(id: id, name: name, roverId: roverId, fullName: fullName)
    }
}
