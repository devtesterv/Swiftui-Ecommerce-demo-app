//
//  ForgotPasswordView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL0957 on 31/01/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var eMail = ""
    @Environment (\.presentationMode) var mode
    var body: some View {
        NavigationView{
        ZStack{
            ScrollView{
                Spacer(minLength: 50)
                VStack {
                    Text("Forgot Password")
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
                    TextField( "Email or phone number", text: $eMail)
                        .font(.system(size: 15))
                    //                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                        ).padding([.horizontal],15)
                        .padding([.vertical],0)
                    
                    NavigationLink(destination: LoginView()) {
                        Button(action: {
                          
                           
                        }) {
                            HStack {
                                Text("SEND")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                            }
                            //.fontWeight(.semibold)
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
                    }
                    .navigationBarHidden(true)
                    
                    
                    
                }.padding()
                Spacer(minLength: 50)
                VStack{
                    ZStack {
                        VStack {
                            Text("Or Sign up with social account")
                            ZStack {
                                HStack{
                                    ZStack {
                                        Circle()
                                            .fill(.clear)
                                            .frame(width: 70, height: 70)
                                        
                                        Button(action: {
                                            print("search clicked")
                                        }) {
                                            
                                            HStack {
                                                Image("google")
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                            }
                                        }
                                    }.padding(.leading,85)
                                    Spacer()
                                    
                                    ZStack {
                                        Circle()
                                            .fill(.clear)
                                            .frame(width: 70, height: 70)
                                        Button(action: {
                                            
                                            print("Facebook clicked")
                                        }) {
                                            
                                            HStack {
                                                Image("facebook")
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                            }
                                        }
                                    }.padding(.trailing,85)
                                }.padding()
                            }
                            Spacer()
                        }
                    }
                }
            }
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
                    }
                }.background(Color(hex: 0xF9F9F9 ))
                Spacer()
            }
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }.background(Color(hex: 0xF9F9F9 ))
            
    }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
