//
//  DebugIndex.swift
//  swiftui-flux
//
//  Created by elmetal on 2019/08/07.
//  Copyright © 2019 s001033. All rights reserved.
//

import SwiftUI

struct DebugIndexView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                Text("not supported view").padding()
                NavigationLink(destination: SingleView()) {
                    Text("SingleView").padding()
                }.navigationBarTitle(Text("Views"))
            }
        }
    }
}

#if DEBUG
struct DebugIndexView_Previews: PreviewProvider {
    static var previews: some View {
        DebugIndexView()
    }
}
#endif

