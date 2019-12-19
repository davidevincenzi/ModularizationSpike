//
//  ViewController.swift
//  ModularizationSpike
//
//  Created by Davide Vincenzi on 18.12.19.
//  Copyright © 2019 Agilentia SA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainPresenter {
    private var documentNameLabel: UILabel = .init()
    private var syncButton: UIButton = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(documentNameLabel)
        documentNameLabel.frame = CGRect(x: 20, y: 20, width: 150, height: 30)
        
        view.addSubview(syncButton)
        syncButton.frame = CGRect(x: 20, y: 80, width: 150, height: 30)
        syncButton.addTarget(self, action: #selector(sync), for: .touchUpInside)
        syncButton.setTitle("Sync", for: .normal)
        syncButton.setTitleColor(.red, for: .normal)
    }
    
    @objc func sync() {
        didTapSync?()
    }
    
    var didTapSync: (() -> ())?
    
    func setDocumentName(_ name: String?) {
        documentNameLabel.text = name
    }
}
