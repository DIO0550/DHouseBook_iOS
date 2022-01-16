//
//  ContentView.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/17.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DHouseBookDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DHouseBookDocument()))
    }
}
