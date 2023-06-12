//
//  EditAddressView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 21/02/23.
//

import SwiftUI

struct EditAddressView: View {
    @State private var eMail = ""
    @State private var showModal = false
    
    var body: some View {
        ZStack{
            VStack{
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
                ScrollView{
                   
                    VStack {
                        
                        TextField( "Full name", text: $eMail)
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
                        TextField( "Address", text: $eMail)
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
                       
                        TextField( "City", text: $eMail)
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
                        TextField( "State/Province/Region", text: $eMail)
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
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Country")
                                    .foregroundColor(.secondary)
                                Text("US").foregroundColor(.primary)
                            }
                            Spacer()
                            Image(systemName: "chevron.forward")
                                .frame(width: 15,height: 15)
                        }.padding()
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
                        ).padding([.horizontal],15)
                        .padding([.vertical],0)
                        .padding(.top,10)
                        Button(action: {
                            print("Log in Cliked")
                          
                        }) {
                            HStack {
                                
                                Text("SAVE ADDRESS")
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

struct EditAddressView_Previews: PreviewProvider {
    static var previews: some View {
        EditAddressView()
    }
}
