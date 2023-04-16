//
//  DHouseBookModel.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/18.
//

import Foundation

struct PurchaseItem: Identifiable, Codable {
    var id = UUID()
    var name: String = ""
    var price: Int = 0
    var type: String = ""
    var purchasedDate: Date = Date()
}

struct DHouseBook: Identifiable, Codable {
    var id = UUID()
    var items: [PurchaseItem]
}

extension PurchaseItem: Equatable {
    static func == (lhs: PurchaseItem, rhs: PurchaseItem) -> Bool {
        lhs.id == rhs.id
    }
}

extension DHouseBook {
    static let initializeList = DHouseBook(items: [])
}

extension DHouseBook {
    mutating func addNewItem() {
        let newItem = PurchaseItem()
        items.append(newItem)
    }
}
