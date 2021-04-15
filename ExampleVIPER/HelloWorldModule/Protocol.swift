//
//  Protocol.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

protocol HelloWorldViewEventHandler {
    func setupLabelConstraint()
}

// View -> Presenter
protocol HelloWorldView: class {
    func setLabel(text: String)
    func setupLabelConstraint()
}

// Interactor -> Presenter
protocol HelloWorldProvider {
    func provideHelloWorldData()
}
// Entity -> Intercator
protocol EntityOutput: class {
    func receiveHelloWorld(helloWorldData: HW)
}
