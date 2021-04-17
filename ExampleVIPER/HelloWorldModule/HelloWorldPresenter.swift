//
//  HelloWorldPresenter.swift
//  ExampleVIPER
//
//  Created by Егор Горских on 15.04.2021.
//

import Foundation

class HelloWorldPresenter: ViewToPresenter  {
  
    weak var view: PresenterToView?
    var interactor: InteractorToPresenter?
    
}

extension HelloWorldPresenter: EntityProvider  {
    
    func receiveHelloWorld(helloWorld: HW) {
        let strHelloWorld = helloWorld.helloWorld
        view?.setLabel(helloWorld: strHelloWorld)
    }
    
}
