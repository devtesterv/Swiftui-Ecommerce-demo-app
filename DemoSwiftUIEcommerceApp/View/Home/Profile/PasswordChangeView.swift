//
//  PasswordChangeView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 20/02/23.
//

import SwiftUI

struct PasswordChangeView: View {
    @State private var eMail = ""
    @State private var showModal = false
    
    var body: some View {
        ZStack{
            
            ScrollView{
                ZStack {
                    HStack {
                        Spacer()
                        Text("Password Change")
                        Spacer()
                    }
                }.background(Color(hex: 0xF9F9F9 ))
                VStack {
                    TextField( "Old Password", text: $eMail)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
                        ).padding([.horizontal],15)
                        .padding([.vertical],0)
                        .padding(.top,10)
                    Button(action: {}) {
                        HStack {
                            Text("Forgot your password?")
                                .fontWeight(.regular)
                                .foregroundColor(.secondary)
                        }
                        
                    }
                    .padding([.horizontal],20)
                    .padding([.vertical],0)
                    .padding([.top,.bottom])
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: Alignment.trailing
                    )
                    TextField( "New Password", text: $eMail)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
                        ).padding([.horizontal],15)
                        .padding([.vertical],0)
                        .padding(.top,10)
                    TextField( "Repect New Password", text: $eMail)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
                        ).padding([.horizontal],15)
                        .padding([.vertical],0)
                        .padding(.top,10)
                  
                    Button(action: {
                        print("Log in Cliked")
                        showModal = false
                      
                    }) {
                        HStack {
                            
                            Text("SAVE PASSWORD")
                                .fontWeight(.regular)
                                .foregroundColor(.white)
                            
                        }
                        //                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.red)
                                .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        )
                    }
                    .padding([.horizontal],20)
                    .padding([.vertical],0)
                    .padding([.top,.bottom])
                }.padding()
            }
            
//            VStack {
//                ZStack {
//                    Capsule ()
//                        .frame (width: 40, height: 6)
//                        .frame (height: 40)
//                        .frame (maxWidth: .infinity)
//                    .background (Color.white.opacity (0.00001))
//                }
//                ZStack {
//                    HStack {
//                        Spacer()
//                        Text("Password Change")
//                        Spacer()
//                    }
//                }.background(Color(hex: 0xF9F9F9 ))
//                Spacer()
//            }
            Modal2View(isShowing: $showModal)
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
       
    }
}

struct PasswordChangeView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordChangeView()
    }
}
