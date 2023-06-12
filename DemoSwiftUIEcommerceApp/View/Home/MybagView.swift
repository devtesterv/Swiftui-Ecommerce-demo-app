//
//  MybagView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 10/02/23.
//

import SwiftUI

struct MybagView: View {
    @State private var search = ""
    @State private var showModal = false
    var body: some View {
        ZStack{
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
                    
                }
                Text("My Bag")
                    .font(
                        .custom(
                            "AmericanTypewriter",
                            fixedSize: 30)
                        .weight(.black)
                    )
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: 50,
                        alignment: Alignment.leading
                    ).padding()
                    .padding([.bottom,.top],-25)
                ScrollView{
                    ForEach(1..<3) { index in
                        HStack {
                            Image("Screenshot1")
                                .resizable()
                                .frame(width: 100,height: 100)
                                .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Product name")
                                        .font(.headline)
                                        .padding(.top,0)
                                    HStack{
                                        HStack{
                                            Text("Color:").foregroundColor(Color.secondary)
                                            Text("Gray").foregroundColor(Color.primary)
                                        }
                                        HStack{
                                            Text("Size:").foregroundColor(Color.secondary)
                                            Text("L").foregroundColor(Color.primary)
                                        }
                                    }
                                    HStack{
                                        HStack{
                                            Button(action: {
                                                
                                            }) {
                                                Image(systemName: "minus")
                                                    .foregroundColor(.gray)
                                                    .frame(width: 10, height: 10)
                                                    .padding(10)
                                                    .background(.white)
                                                    .cornerRadius(30)
                                                    .shadow(color: Color.gray.opacity(0.7),
                                                            radius: 8,
                                                            x: 0,
                                                            y: 0)
                                            }
                                        }
                                        Text("100")
                                        HStack{
                                            Button(action: {
                                                
                                            }) {
                                                Image(systemName: "plus")
                                                    .foregroundColor(.gray)
                                                    .frame(width: 10, height: 10)
                                                    .padding(10)
                                                    .background(.white)
                                                    .cornerRadius(30)
                                                    .shadow(color: Color.gray.opacity(0.7),
                                                            radius: 8,
                                                            x: 0,
                                                            y: 0)
                                            }
                                        }
                                    }
                                   
                                }
                            
                            Spacer()
                            VStack(alignment: .trailing) {
                                Menu {
                                    Button(action: {
                                        
                                    }) {
                                        VStack(alignment: .leading) {
                                            Text("Add to favorites")
                                                .font(.headline)
                                                .foregroundColor(.black)
                                        }
                                    }
                                    Button(action: {
                                        
                                    }) {
                                        VStack(alignment: .leading) {
                                            Text("Delete frm the list")
                                                .font(.headline)
                                                .foregroundColor(.black)
                                        }
                                    }
                                } label: {
                                    Image(systemName: "ellipsis")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .frame(width: 20, height: 50)
                                        .rotationEffect(.degrees(-90))
                                }
                                    
                                
                            }
                            .padding(.top,0)
                            .padding(.trailing,8)
                            .padding(.bottom,50)
                        }.background(Color.white)
                        .cornerRadius(10)
                        .padding([.leading,.trailing],8)
                        .padding(.top,0)
                    }
                }
//                Spacer()
                VStack {
                    HStack{
                        HStack{
                            TextField("Promocode", text: $search)
                            Button(action: {
                                
                            }) {
                                Image(systemName: "xmark")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:15,height:15)
                                    .foregroundColor(.primary)
                            }
                          
                        }.frame(height: 8)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        
                        
                    }.padding([.top,.bottom],0)
                        .padding([.trailing,.leading],10)
                    .foregroundColor(.black)
                    .shadow(color: Color.gray.opacity(0.5),radius: 2,x: 0,y: 0)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Total amount")
                                .font(.headline)
                                .foregroundColor(Color.secondary)
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("100$")
                        }
                    }.padding()
                    HStack{
                        Button(action: {
                            showModal = true
                        }) {
                            HStack {
                                Text("CHECK OUT")
                                    .fontWeight(.regular)
                                    .foregroundColor(.white)

                            }
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
                }
                
            }
            SlideupView(isShowing: $showModal)
            
        }.background(Color(hex: 0xF9F9F9 ))
    }
}

struct MybagView_Previews: PreviewProvider {
    static var previews: some View {
        MybagView()
    }
}
