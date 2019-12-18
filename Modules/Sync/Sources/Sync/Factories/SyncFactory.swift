//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation

public class SyncFactory {
    public init() {}
    
    public func makeSyncProvider() -> SyncProvider {
        return SyncManager()
    }
}
