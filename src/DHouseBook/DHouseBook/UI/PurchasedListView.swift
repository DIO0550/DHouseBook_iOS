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
                    Text($item.wrappedValue.name)
                }
            }
            .navigationBarItems(
                trailing: Button(action: {
                    
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
