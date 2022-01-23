//
//  ContentView.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/17.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var document: DHouseBookDocument
    
    var body: some View {
        List {
            ForEach($document.houseBook.items) { $item in
                Text($item.wrappedValue.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView().environmentObject(DHouseBookDocument())
    }
}
