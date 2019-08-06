//
//  SettingsView.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    private var actionCreator: SingleViewActionCreator
    @ObservedObject var store: SingleViewStore = .shared
    
    init(actionCreator: SingleViewActionCreator = .init()) {
        self.actionCreator = actionCreator
    }
    
    var body: some View {
        VStack {
            if self.store.isSettingShown {
                Text("Setting 🐱").onTapGesture {
                    self.actionCreator.updateShownSetting()
                }
                Text("Setting 🐶").onTapGesture {
                    self.actionCreator.updateShownSetting()
                }
            } else {
                Text("Setting 🐱").hidden()
                Text("Setting 🐶").hidden()
            }
        }
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif

