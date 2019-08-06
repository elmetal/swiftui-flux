//
//  SingleViewStore.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class SingleViewStore: ObservableObject {
    static let shared = SingleViewStore()
    
    @Published var isSettingShown = false
    
    init(dispatcher: SingleViewDispatcher = .shared) {
        dispatcher.register { [weak self] (action) in
            guard let strongSelf = self else { return }
            
            switch action {
            case .updateShownSetting: strongSelf.isSettingShown = !strongSelf.isSettingShown
            }
        }
    }
}
