//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation
import Models

public protocol DocumentsDataSource {
    func documents() -> [DocumentProtocol]
    func update(documents: [DocumentProtocol])
}
