//
//  HelloWorldRouter.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

class HelloWorldRouter {
    
    static func createHelloWorldModule() -> HelloWorldVC {
        let view = HelloWorldVC()
        let presenter = HelloWorldPresenter()
        let interactor = HelloWorldInteractor()
        view.presentor = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
    
    
}
