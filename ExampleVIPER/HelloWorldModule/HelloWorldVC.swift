//
//  ViewController.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import UIKit

class HelloWorldVC: UIViewController {
    
    // MARK: - VIPER
    var presentor: ViewToPresenter!
    
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
        view.backgroundColor = .white
        presentor.interactor?.provideHelloWorldData()
        setupLabelConstraint()
        print("View did load. Text labal - \(helloWorld.text!)")
    }
    
    // MARK: - Setup Constraint
    func setupLabelConstraint() {
        view.addSubview(helloWorld)
        NSLayoutConstraint.activate([
            helloWorld.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloWorld.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}

// MARK: - VIPER: PresenterToView

extension HelloWorldVC: PresenterToView {
    
    func setLabel(helloWorld: String) {
        self.helloWorld.text = helloWorld
    }
    
}
