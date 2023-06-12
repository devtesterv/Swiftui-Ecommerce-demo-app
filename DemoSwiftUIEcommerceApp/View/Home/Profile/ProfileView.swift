//
//  ProfileView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL0957 on 01/02/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
      
            NavigationView {
                ZStack{
                    ScrollView{
                        Spacer(minLength: 75)
                        VStack {
                            Text("My Profile")
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
                        }
                        HStack{
                            Image("Screenshot1")
                                .resizable()
                                .frame(width: 100,height: 100)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                            VStack(alignment: .leading) {
                                Text("Profile Name")
                                    .fontWeight(.bold)
                                Text("testerios@yopmail.com") .accentColor(.gray)
                                Spacer()
                            }.padding(.leading,15)
                                .padding(.top,20)
                            Spacer()
                        }.padding()
                        ScrollView (.vertical, showsIndicators: false) {
                            NavigationLink {
                                MyOrdesView()
                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("My order")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                        Text("Already have 12 orders").foregroundColor(.gray)
                                            .padding(.top,3)
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.forward")
                                        .frame(width: 15,height: 15)
                                        .foregroundColor(.black)
                                }.padding()
                            }
                            
                            Divider()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("My Shipping Address")
                                        .font(.headline)
                                    Text("3 Addresses").foregroundColor(.gray)
                                        .padding(.top,3)
                                }
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .frame(width: 15,height: 15)
                            }.padding()
                            Divider()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Payment methods")
                                        .font(.headline)
                                    Text("visa **34").foregroundColor(.gray)
                                        .padding(.top,3)
                                }
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .frame(width: 15,height: 15)
                            }.padding()
                            Divider()
                        }
                        
                        ScrollView (.vertical, showsIndicators: false) {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Promocodes")
                                        .font(.headline)
                                    Text("You have special promocodes").foregroundColor(.gray)
                                        .padding(.top,3)
                                }
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .frame(width: 15,height: 15)
                            }.padding()
                            Divider()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("My reviews")
                                        .font(.headline)
                                    Text("Review for 4 items").foregroundColor(.gray)
                                        .padding(.top,3)
                                }
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .frame(width: 15,height: 15)
                            }.padding()
                            Divider()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Settings")
                                        .font(.headline)
                                    Text("Notifications,password").foregroundColor(.gray)
                                        .padding(.top,3)
                                }
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .frame(width: 15,height: 15)
                            }.padding()
                            Divider()
                        }
                    }
                    VStack {
                        ZStack {
                            HStack {
                                Spacer()
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .frame(width: 35, height: 35)
                                        .padding()
                                }
                                
                            }
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
