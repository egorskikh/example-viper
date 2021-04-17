//
//  HelloWorldInteractor.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

class HelloWorldInteractor: InteractorToPresenter {
    
    var presenter: EntityProvider!

    func provideHelloWorldData() {
        let helloWorld = HW()
        presenter.receiveHelloWorld(helloWorld: helloWorld)
    }
    
    
}



