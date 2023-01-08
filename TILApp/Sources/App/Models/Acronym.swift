//
//  File.swift
//  
//
//  Created by Emir Alkal on 8.01.2023.
//

import Fluent
import Vapor

final class Acronym: Model {
    @ID
    var id: UUID?
    
    @Field(key: "short")
    var short: String
    
    @Field(key: "long")
    var long: String
    
    init() {}
    
    init(id: UUID? = nil, short: String, long: String) {
        self.id = id
        self.short = short
        self.long = long
    }
    
    static let schema = "acronyms"
}

extension Acronym: Content {}
