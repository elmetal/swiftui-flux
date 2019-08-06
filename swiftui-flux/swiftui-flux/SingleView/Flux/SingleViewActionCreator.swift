//
//  SingleViewActionCreator.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import Foundation
import Combine

final class SingleViewActionCreator {
    private let dispatcher: SingleViewDispatcher
    private let settingsShownSubject = PassthroughSubject<Void, Never>()
    private var cancellables: [AnyCancellable] = []

    
    init(dispatcher: SingleViewDispatcher = .shared) {
        self.dispatcher = dispatcher
        
        self.bindActions()
    }
    
    func bindActions() {
        let settingsShownStream = settingsShownSubject
            .sink(receiveValue: { [dispatcher] in dispatcher.dispatch(.updateShownSetting) })
        
        self.cancellables += [settingsShownStream]
    }
    
    func updateShownSetting() {
        settingsShownSubject.send(())
    }
}
