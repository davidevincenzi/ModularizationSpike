//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation

public class PersistenceFactory {
    public init() {}
    
    public func makeDocumentsDataSource() -> DocumentsDataSource {
        return CoreDataDocumentsDataSource()
    }
}
