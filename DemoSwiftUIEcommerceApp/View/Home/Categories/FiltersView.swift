//
//  FiltersView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 08/02/23.
//

import SwiftUI

struct FiltersView: View {
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
                        Text("Filter")
                            .fontWeight(.regular)
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
                    }
                    
                }
                ScrollView{
                    FilterCellView()
                }
                Spacer()
                VStack {
                    HStack{
                        Button(action: {
                            print("Log in Cliked")
    //                        NavigationLink(destination: RegisterView()){
    //
    //                        }
                        }) {
                            HStack {
                                Text("Discard")
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)

                            }
                            .background(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.secondary))
//                            //                        .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .frame(minWidth: 0, maxWidth: .infinity)
//                            .padding()
//                            .background(
//                                RoundedRectangle(cornerRadius: 25)
//                                    .fill(Color.white)
//                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
//                            )
                        }.padding([.leading,.trailing],10)
                        
                        Button(action: {
    //                        NavigationLink(destination: RegisterView()){
    //
    //                        }
                        }) {
                            HStack {
                                Text("Apply")
                                    .fontWeight(.semibold)
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
                        }.padding([.leading,.trailing],10)
                    }.padding([.leading,.trailing],10)
                }
                
            }
        }.background(Color(hex: 0xF9F9F9 ))
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}
