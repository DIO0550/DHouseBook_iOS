//
//  PurchaseItemView.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/25.
//

import SwiftUI

struct PurchaseItemView: View {
    @Binding var item: PurchaseItem;
    var body: some View {
        HStack {
            TextField("", text: $item.name)
            TextField("", value: $item.price, formatter: NumberFormatter())
            TextField("", text: $item.type)
        }
    }
}

struct PurchaseItemView_Previews: PreviewProvider {
    @State static var demoItem: PurchaseItem = PurchaseItem.init(id: UUID(), name: "買ったもの", price: 19000, type: "お菓子", purchasedDate: Date())
    
    static var previews: some View {


        
        PurchaseItemView(item: $demoItem)
    }
}
