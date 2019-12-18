//
//  File.swift
//  
//
//  Created by Davide Vincenzi on 18.12.19.
//

import UIKit

public protocol Presentable: class {
    func toPresent() -> UIViewController
}

@objc extension UIViewController: Presentable {
    
    public func toPresent() -> UIViewController {
        return self
    }
}
