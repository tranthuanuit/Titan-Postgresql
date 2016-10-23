//
//  DatabaseObj.swift
//  Titan
//
//  Created by Nghia Tran on 10/14/16.
//  Copyright © 2016 fe. All rights reserved.
//

import Cocoa
import ObjectMapper

class DatabaseObj: BaseModel {

    
    //
    // MARK: - Variable
    var name: String!
    var host: String!
    var user: UserObj!
    var password: String!
    var database: String!
    var port: Int!
    var saveToKeychain: Bool!
    
    
    //
    // MARK: - Override
    required init?(_ map: Map) {
        super.init(map: map)
    }
    
    required init?(map: Map) {
        fatalError("init(map:) has not been implemented")
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        self.name <- map[Constants.Obj.Database.Name]
        self.host <- map[Constants.Obj.Database.Host]
        self.user <- map[Constants.Obj.Database.User]
        self.password <- map[Constants.Obj.Database.Password]
        self.database <- map[Constants.Obj.Database.Database]
        self.port <- map[Constants.Obj.Database.Port]
        self.saveToKeychain <- map[Constants.Obj.Database.SaveToKeyChain]
    }
    
    
}