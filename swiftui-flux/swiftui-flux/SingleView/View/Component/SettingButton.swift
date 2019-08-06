//
//  SettingButton.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import SwiftUI

struct SettingButton: View {
    private var actionCreator: SingleViewActionCreator
    
    init(actionCreator: SingleViewActionCreator = .init()) {
        self.actionCreator = actionCreator
    }
    
    var body: some View {
        Button(action: {
            self.actionCreator.updateShownSetting()
            }){ Text("⚙")}.padding()
    }
}

#if DEBUG
struct SettingButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingButton()
    }
}
#endif
