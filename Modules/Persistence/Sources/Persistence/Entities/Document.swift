//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation
import Models

class Document: DocumentProtocol {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
