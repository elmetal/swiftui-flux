//
//  SingleView.swift
//  swiftui-flux
//  
//  Created by elmetal on 2019/08/06
//  Copyright © 2019 s001033. All rights reserved.
//

import SwiftUI
import UIKit

struct SingleView: View {
    @ObservedObject var store: SingleViewStore = .shared
    var body: some View {
        ZStack(alignment: .topTrailing) {
            UIViewWrappedView()
            VStack(alignment: .trailing) {
                SettingButton()
                SettingsView()
            }
        }.navigationBarTitle(Text("SingleView"))
    }
}


private struct UIViewWrappedView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<UIViewWrappedView>) -> UIView {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)

        let label: UILabel = UILabel()
        label.text = "Wrapped View"
        label.center = view.center
        
        view.addSubview(label)
        label.sizeToFit()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<UIViewWrappedView>) {
        uiView.layoutSubviews()
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
