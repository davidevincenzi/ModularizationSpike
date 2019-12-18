//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation

public class UIFactory {
    public init() {}
    
    public func makeMainPresenter() -> MainPresenter {
        return MainViewController()
    }
}
