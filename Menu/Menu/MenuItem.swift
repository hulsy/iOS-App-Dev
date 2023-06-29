//
//  MenuItem.swift
//  Menu
//
//  Created by Alex Hulford on 2023-06-27.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
