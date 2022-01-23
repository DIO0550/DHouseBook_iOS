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
    
    @Published var houseBook: DHouseBook;
    
    init() {
        houseBook = .initializeList;
    }
    
    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents
        else {
            throw NSError.init(domain: "error init", code: -1, userInfo: nil)
        }
        self.houseBook = try JSONDecoder().decode(DHouseBook.self, from: data);
    }
    
    func snapshot(contentType: UTType) throws -> DHouseBook {
        houseBook
    }
    
    func fileWrapper(snapshot: DHouseBook, configuration: WriteConfiguration) throws -> FileWrapper {
        let data = try JSONEncoder().encode(snapshot)
        let fileWrapper = FileWrapper(regularFileWithContents: data)
        return fileWrapper
    }
    


}
