//
//  SingleViewDispatcher.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import Foundation
import Combine

final class SingleViewDispatcher {
    static let shared = SingleViewDispatcher()
    
    private let actionSubject = PassthroughSubject<SingleViewAction, Never>()
    private var cansellables: [AnyCancellable] = []
    
    func register(callback: @escaping (SingleViewAction) -> ()) {
        let actionStream = actionSubject.sink(receiveValue: callback)
        cansellables += [actionStream]
    }
    
    func dispatch(_ action: SingleViewAction) {
        actionSubject.send(action)
    }
}
