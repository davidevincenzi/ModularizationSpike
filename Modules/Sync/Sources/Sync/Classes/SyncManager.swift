//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation
import Alamofire
import Models
import Persistence

class SyncManager: SyncProvider {
    func startSync(dataSource: DocumentsDataSource, completion: @escaping (() -> Void)) {
        Alamofire.request("https://www.sherpany.com").response { (data) in
            dataSource.update(documents: [])
            completion()
        }
    }
}
