//
//  ViewController.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import UIKit

class HelloWorldVC: UIViewController {
    // MARK: - VIPER
    
    var eventHandler: HelloWorldViewEventHandler!
    
    // MARK: - Property
    
    var helloWorld: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Waiting for data from the entity"
        return label
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabelConstraint()
    }
    
    // MARK: - Setup Constraint
    
    func setupLabelConstraint() {
        self.eventHandler.setupLabelConstraint()
        
        view.addSubview(helloWorld)
        NSLayoutConstraint.activate([
            helloWorld.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloWorld.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
}

// MARK: - VIPER: HelloWorldView

extension HelloWorldVC: HelloWorldView {
    
    func setLabel(text: String) {
        self.helloWorld.text = text
    }
    
}
