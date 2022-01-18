//
//  DHouseBookDocument.swift
//  DHouseBook
//
//  Created by DIO on 2022/01/17.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var houseBookDocument: UTType {
        UTType(importedAs: "dio.housebook.doc")
    }
}

final class DHouseBookDocument: ReferenceFileDocument {
    typealias Snapshot = DHouseBook
    
    static var readableContentTypes: [UTType] { [.houseBookDocument] }
    
    init() {
        
    }
    
    init(configuration: ReadConfiguration) throws {
        
    }
    
    func snapshot(contentType: UTType) throws -> DHouseBook {
        
    }
    
    func fileWrapper(snapshot: DHouseBook, configuration: WriteConfiguration) throws -> FileWrapper {
        
    }
    


}
