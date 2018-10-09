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
    @objc let id: Int
    @objc let name: String
    @objc let roverId: Int
    @objc let fullName: String
    
    @objc init(id: Int, name: String, roverId: Int, fullName: String) {
        self.id = id
        self.name = name
        self.roverId = roverId
        self.fullName = fullName
    }
}
