//
//  SplashView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 23/02/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false

    var body: some View {
        if #available(iOS 15.0, *) {
            VStack {
                // 2.
                if self.isActive {
                    // 3.
                    SplashScreenView()
                } else {
                    // 4.
                    if #available(iOS 15.0, *) {
                        Text("test")
                            .font(Font.largeTitle)
                            .foregroundColor(.red)
                          
                    } else {
                        // Fallback on earlier versions
                    }
                }
            } .background(.yellow)
            // 5.
                .onAppear {
                    // 6.
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        // 7.
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
