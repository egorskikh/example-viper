//
//  Protocol.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

// View -> Presenter
protocol ViewToPresenter {
    var view: PresenterToView? { get set }
    var interactor: InteractorToPresenter? { get set }
}

// Presenter -> View
protocol PresenterToView: class {
     func setLabel(helloWorld: String)
}

// Entity -> Project
protocol EntityProvider {
    func receiveHelloWorld(helloWorld: HW)
}

// Interactor -> Presenter
protocol InteractorToPresenter {
    func provideHelloWorldData()
}

