//
//  DHouseBookModel.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/18.
//

import Foundation

struct PurchaseItem: Identifiable, Codable {
    var id = UUID()
    var name: String
    var price: Int
    var type: String
    var purchasedDate: Date
}

struct DHouseBook: Identifiable, Codable {
    var id = UUID()
    var items: [PurchaseItem]
}

extension PurchaseItem: Equatable {
    
    static func ==(lhs: PurchaseItem, rhs: PurchaseItem) -> Bool {
        lhs.id == rhs.id
    }
}
