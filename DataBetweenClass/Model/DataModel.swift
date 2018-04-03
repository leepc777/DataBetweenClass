//
//  DataModel.swift
//  DataBetweenClass
//
//  Created by sam on 4/2/18.
//  Copyright © 2018 patrick. All rights reserved.
//

import Foundation

// Create a singleton NSObject to store data

class DataModel : NSObject {
    var userInputText = String()
    
    //create singleton
    static let Asingle = DataModel()
}
