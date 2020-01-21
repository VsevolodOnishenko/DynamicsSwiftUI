//
//  Model.swift
//  Dynamics Swift UI
//
//  Created by Vsevolod Onishchenko on 14.12.2019.
//  Copyright © 2019 oneactionapp. All rights reserved.
//

import SwiftUI

struct Coffee: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable  {
        case hot = "HOT"
        case cold = "COLD"
    }
    
}
