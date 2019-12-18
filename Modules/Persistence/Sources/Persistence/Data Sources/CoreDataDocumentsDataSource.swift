//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation
import Models

class CoreDataDocumentsDataSource: DocumentsDataSource {
    func documents() -> [DocumentProtocol] {
        return [Document(name: "The document!")]
    }
    func update(documents: [DocumentProtocol]) {
        //Do something
    }
}
