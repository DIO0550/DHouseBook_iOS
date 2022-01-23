//
//  DHouseBookApp.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/17.
//

import SwiftUI

@main
struct DHouseBookApp: App {
    var body: some Scene {
        DocumentGroup(newDocument:{ DHouseBookDocument()}) { configration in
            ContentView();
        }
    }
}
