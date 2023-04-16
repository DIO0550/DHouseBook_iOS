//
//  ContentView.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/17.
//

import SwiftUI

struct PurchasedListView: View {
    @EnvironmentObject var document: DHouseBookDocument

    var body: some View {
        NavigationView {
            List {
                ForEach($document.houseBook.items) { $item in
                    PurchaseItemView(item: $item)
                }
            }
            .navigationBarItems(
                trailing: Button(action: {
                    document.houseBook.addNewItem()
                }) {
                    Image(systemName: "plus")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PurchasedListView().environmentObject(DHouseBookDocument())
    }
}
