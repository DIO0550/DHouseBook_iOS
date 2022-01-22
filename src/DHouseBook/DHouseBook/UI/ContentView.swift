//
//  ContentView.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/17.
//

import SwiftUI

struct ContentView: View {

    
    @Binding var document: DHouseBookDocument

    @Environment(\.undoManager) var undoManager
    
    @State private var selection = Set<UUID>()
    
    var body: some View {
        List(selection: $selection, content: ForEach($document.houseBook.items))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DHouseBookDocument()))
    }
}
