//
//  ShippingAddressView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 21/02/23.
//

import SwiftUI

struct ShippingAddressView: View {
    var body: some View {
        ZStack{
            
            
            VStack {
                ZStack {
                    HStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.black)
                                .font(.title)
                                .frame(width: 35, height: 35)
                                .padding()
                            
                        }
                        Spacer()
                        Text("Orders")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.black)
                                .font(.title)
                                .frame(width: 35, height: 35)
                                .padding()
                        }
                    }.background(Color(hex: 0xF9F9F9 ))
                        .shadow(
                            color: Color.clear,
                            radius: 0,
                            x: 0,
                            y: 0
                        )
                }.background(Color(hex: 0xF9F9F9 ))
                    .shadow(
                        color: Color.gray.opacity(0.5),
                        radius: 8,
                        x: 0,
                        y: 5
                    )
                Spacer()
                ScrollView(showsIndicators: false){
                    AddressCellView()
                    AddressCellView()
                    AddressCellView()
                }
            }
            
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct ShippingAddressView_Previews: PreviewProvider {
    static var previews: some View {
        ShippingAddressView()
    }
}
