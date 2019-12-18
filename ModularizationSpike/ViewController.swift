//
//  ViewController.swift
//  ModularizationSpike
//
//  Created by Davide Vincenzi on 18.12.19.
//  Copyright © 2019 Agilentia SA. All rights reserved.
//

import UIKit
import Models
import Persistence
import Sync

class ViewController: UIViewController {
    //This would be a dependency in a real project
    lazy var documentsDataSource: DocumentsDataSource = {
        let factory = PersistenceFactory()
        return factory.makeDocumentsDataSource()
    }()
    
    @IBOutlet weak var documentNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        documentNameLabel.text = documentsDataSource.documents().first?.uppercasedName
    }

    @IBAction func sync(_ sender: Any) {
        let factory = SyncFactory()
        factory.makeSyncProvider().startSync(dataSource: documentsDataSource) { [weak self] in
            self?.documentNameLabel.text = "Sync finished!"
        }
    }
    
}

