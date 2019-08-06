//
//  SingleView.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import SwiftUI

struct SingleView: View {
    @ObservedObject var store: SingleViewStore = .shared
    var body: some View {
        ZStack(alignment: .topTrailing) {
            UIViewWrappedView()
            VStack {
                SettingButton()
                SettingsView()
            }
        }
    }
}


private struct UIViewWrappedView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<UIViewWrappedView>) -> UIView {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<UIViewWrappedView>) {
        
    }
    
}

private struct StrategyTextView: View {
    var body: some View {
        UIViewWrappedView()
    }
}


#if DEBUG
struct SingleView_Previews: PreviewProvider {
    static var previews: some View {
        SingleView()
    }
}
#endif
