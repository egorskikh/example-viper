//
//  HelloWorldInteractor.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

class HelloWorldInteractor: HelloWorldProvider {
    
    weak var output: EntityOutput!
    
    func provideHelloWorldData() {
        let helloWorld = HW()
        output.receiveHelloWorld(helloWorldData: helloWorld)
    }
        
    
}
