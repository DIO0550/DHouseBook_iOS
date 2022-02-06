//
//  AddPurchasedItemView.swift
//  DHouseBook
//
//  Created by DIO on 2022/02/06.
//

import SwiftUI

struct AddPurchasedItemView: View {
    @State var name: String = "";
    @State var price: Int = 0;
    @State var type: String = "";
    @State var purchasedDate: Date = Date()
    var purchasedDateFormatter = DateFormatter()
    
    init() {
        self.purchasedDateFormatter.dateStyle = .medium
        self.purchasedDateFormatter.timeStyle = .none
    }
    
    var body: some View {
        VStack {
            TextField("名前", text: $name).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("値段", value: $price, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("種類", text: $type)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            DatePicker("購入日", selection: $purchasedDate, displayedComponents: .date)
        }
    }
}

struct AddPurchasedItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddPurchasedItemView()
    }
}
