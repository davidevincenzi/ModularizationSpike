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
import Shank

class AppCoordinator {
    @Inject private var dependencies: AppDependenciesModuleType
    
    func start(from window: UIWindow) {
        let uiFactory: UIFactory = dependencies.component()
        let mainPresenter =  uiFactory.makeMainPresenter()
        configure(mainPresenter: mainPresenter)
        window.rootViewController = mainPresenter.toPresent()
    }
    
    private func configure(mainPresenter: MainPresenter) {
        let persistenceFactory: PersistenceFactory = dependencies.component()
        
        let docs = persistenceFactory.makeDocumentsDataSource()
        mainPresenter.setDocumentName(docs.documents().first?.uppercasedName)
        
        mainPresenter.didTapSync = {
            mainPresenter.setDocumentName("Sync finished!")
        }
    }
}
