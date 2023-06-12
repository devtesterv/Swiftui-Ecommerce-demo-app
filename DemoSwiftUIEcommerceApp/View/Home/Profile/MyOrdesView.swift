//
//  MyOrdesView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 17/02/23.
//

import SwiftUI

struct MyOrdesView: View {
    
    @State private var selectedIndex: Int = 0
    private let categories = ["All","Dress","Shoes"]
    @Environment (\.presentationMode) var mode
    var body: some View {
        NavigationView {
            ZStack{
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                mode.wrappedValue.dismiss()
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
                    ZStack {
                        HStack {
                            
                            Text("My Orders")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            Spacer()
                        }.padding(.leading,15)
                    }
                    
                    HStack {
                        Button(action: {
                            
                        }) {
                            VStack (alignment: .leading, spacing: 0) {
                                Text("Delivered")
                                    .font(.system(size: 18))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 45)
                            }
                            .background(.black)
                            .clipShape(Capsule())
                        }
                        Button(action: {
                            
                        }) {
                            VStack (alignment: .leading, spacing: 0) {
                                Text("Processing")
                                    .font(.system(size: 18))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 45)
                            }
                            .background(.black)
                            .clipShape(Capsule())
                        }
                        Button(action: {
                            
                        }) {
                            VStack (alignment: .leading, spacing: 0) {
                                Text("Cancelled")
                                    .font(.system(size: 18))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 45)
                            }
                            .background(.black)
                            .clipShape(Capsule())
                        }
                        
                    }
                    ScrollView(showsIndicators: false){
                        OredersCellView()
                            .background(.yellow)
                            .padding()
                    }
                }
                
            }.background(Color(hex: 0xF9F9F9 ))
                .zIndex(1)
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
        
        
    }
}

struct MyOrdesView_Previews: PreviewProvider {
    static var previews: some View {
        MyOrdesView()
    }
}
