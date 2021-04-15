//
//  HelloWorldPresenter.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

class HelloWorldPresenter: EntityOutput {
    
    weak var view: HelloWorldView!
    var helloWorldProvider: HelloWorldProvider!
    
    func receiveHelloWorld(helloWorldData: HW) {
        let strHelloWorld = helloWorldData.helloWorld
        self.view.setLabel(text: strHelloWorld)
        self.view.setupLabelConstraint()
    }
}
