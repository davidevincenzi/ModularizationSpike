//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import Foundation

public protocol MainPresenter: Presentable {
    var didTapSync: (() -> ())? { get set }
    
    func setDocumentName(_ name: String?)
}
