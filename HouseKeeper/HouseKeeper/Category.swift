//
//  Category.swift
//  Open House
//
//  Created by Arjun Chib on 11/11/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import Foundation

class Category {
    var name: String
    var criteria: [Criterion]
    
    init(name: String) {
        self.name = name
        criteria = []
    }
}
