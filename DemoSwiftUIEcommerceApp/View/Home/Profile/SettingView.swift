//
//  SettingView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 20/02/23.
//

import SwiftUI

struct SettingView: View {
    @State private var fullName = ""
    @State private var passwaord = ""
    @State private var dob = "12/12/2023"
    
    @State private var showModal = false
    @State private var showGreeting1 = false
    @State private var showGreeting2 = false
    @State private var showGreeting3 = false
    @State private var showLogo = false
    
    var body: some View {
        NavigationView{
        ZStack{
            
            ScrollView{
                Spacer(minLength: 50)
                VStack {
                    Text("Settings")
                        .font(
                            .custom(
                                "AmericanTypewriter",
                                fixedSize: 30)
                            .weight(.black)
                        )
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: Alignment.leading
                        ).padding()
                    
                    Text("Order Information")
                        .fontWeight(.semibold)
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: Alignment.leading
                        ).padding()
                        .padding(.top,-25)
                    
                    TextField( "Full Name", text: $fullName)
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
                    
                    VStack{
                        HStack{
                            Text("Date Of Birth")
                                .font(.system(size: 15))
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                        TextField( "12/12/2023", text: $dob)
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                    } .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
                    ).padding([.horizontal],15)
                    .padding([.vertical],0)
                    .padding(.top,10)
                    VStack{
                        VStack {
                            ZStack {
                                HStack {
                                    Text("Password")
                                        .frame(
                                            maxWidth: .infinity,
                                            maxHeight: .infinity,
                                            alignment: Alignment.leading
                                        )
                                    Spacer()
                                    Button(action: {
//                                        withAnimation{
//                                                self.showLogo.toggle()
//                                            }
                                        showModal = true
                                    }) {
                                        Text("Change")
                                            .foregroundColor(.secondary)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                        .padding()
                        .padding([.bottom],-40)
                    VStack{
                        HStack{
                            Text("Password")
                                .fontWeight(.semibold)
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                        Text( "******************")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                            .frame(
                                maxWidth: .infinity,
                                maxHeight: .infinity,
                                alignment: Alignment.leading
                            )
                    } .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
                    ).padding([.horizontal],15)
                    .padding([.vertical],0)
                    .padding(.top,10)
                    
                    
                    
                }.padding()
               
                VStack{
                    VStack {
                        ZStack {
                            HStack {
                                Text("Notification")
                                    .fontWeight(.semibold)
                                    .frame(
                                        maxWidth: .infinity,
                                        maxHeight: .infinity,
                                        alignment: Alignment.leading
                                    )
                                Spacer()
                                
                            }.padding()
                        }
                        HStack {
                            Text("Sales")
                                .fontWeight(.regular)
                                .frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: Alignment.leading
                                )
                            Spacer()
                            Toggle("", isOn: $showGreeting1)
                        }.padding()
                            .padding(.top,-25)
                        HStack {
                            Text("New Arrivals")
                                .fontWeight(.regular)
                                .frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: Alignment.leading
                                )
                            Spacer()
                            Toggle("", isOn: $showGreeting2)
                        }.padding()
                            .padding(.top,-25)
                        HStack {
                            Text("Delivery Status Change")
                                .fontWeight(.regular)
                                .frame(
                                    maxWidth: .infinity,
                                    maxHeight: .infinity,
                                    alignment: Alignment.leading
                                )
                            Spacer()
                            Toggle("", isOn: $showGreeting3)
                        }.padding()
                            .padding(.top,-25)
                        
                    }
                }
                    .padding()
            }
            
            
            VStack{
                if showLogo {
                    PasswordChangeView()
                }
            }
            
            Modal2View(isShowing: $showModal)
            
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
                            color: Color.gray.opacity(0.7),
                            radius: 8,
                            x: 0,
                            y: 8
                        )
                    Spacer()
                }
            
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
