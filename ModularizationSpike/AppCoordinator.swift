//
//  AppCoordinator.swift
//  ModularizationSpike
//
//  Created by Davide Vincenzi on 18.12.19.
//  Copyright © 2019 Agilentia SA. All rights reserved.
//

import Foundation
import UIKit
import Models
import Persistence
import Sync
import UI

class AppCoordinator {
    let uiFactory = UIFactory()
    let persistenceFactory = PersistenceFactory()
    
    func start(from window: UIWindow) {
        let mainPresenter = uiFactory.makeMainPresenter()
        configure(mainPresenter: mainPresenter)
        window.rootViewController = mainPresenter.toPresent()
    }
    
    private func configure(mainPresenter: MainPresenter) {
        let docs = persistenceFactory.makeDocumentsDataSource()
        mainPresenter.setDocumentName(docs.documents().first?.uppercasedName)
        
        mainPresenter.didTapSync = {
            mainPresenter.setDocumentName("Sync finished!")
        }
    }
}
