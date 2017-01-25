//
//  Criteria.swift
//  Open House
//
//  Created by Arjun Chib on 11/11/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import Foundation

enum CriterionType {
    case binary
    case tertiary
}

class Criterion {
    var name: String
    var type: CriterionType
    var priority: Int
    var value: Any
    
    init(name: String, type: CriterionType) {
        self.name = name
        self.type = type
        priority = 0
        value = 0
    }
}
