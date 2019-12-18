//
//  AppDelegate.swift
//  ModularizationSpike
//
//  Created by Davide Vincenzi on 18.12.19.
//  Copyright © 2019 Agilentia SA. All rights reserved.
//

import UIKit
import Persistence
import Sync
import UI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        dependencies.build()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


struct AppDependenciesModule: AppDependenciesModuleType {
    
    func component() -> UIFactory {
        UIFactory()
    }
    
    func component() -> PersistenceFactory {
        PersistenceFactory()
    }
}

// MARK: API

protocol AppDependenciesModuleType {
    func component() -> UIFactory
    func component() -> PersistenceFactory
}

private let dependencies = Dependencies {
    Module { AppDependenciesModule() as AppDependenciesModuleType }
}
