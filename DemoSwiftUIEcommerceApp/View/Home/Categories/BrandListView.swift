//
//  BrandListView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 08/02/23.
//

import SwiftUI

struct BrandListView: View {
    let categoyGen = ["Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands","Brands"]
    @State private var search : String = ""
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
                        Text("Brands")
                            .fontWeight(.regular)
                            .font(.system(size: 25))
                        Spacer()
                        Text("").frame(width: 35, height: 35).padding()
                    }
                    
                }.background(Color(hex: 0xF9F9F9 ))
                
                HStack{
                    HStack{
                        Button(action: {
                            
                        }) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFill()
                                .frame(width:15,height:15)
                                .foregroundColor(.primary)
                        }
                        TextField("Search...", text: $search)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(50)
                    
                    
                }.padding()
                    .padding([.top,.bottom],0)
                .foregroundColor(.black)
                .shadow(color: Color.gray.opacity(0.5),radius: 2,x: 0,y: 0)
                ScrollView (.vertical, showsIndicators: false) {
                    VStack{
                        ForEach(categoyGen, id: \.self) { item in
                            Button(action:{
                            })  {
        
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("\(item)")
                                            .foregroundColor(.black)
                                            .padding(.top,3)
                                    }
                                    Spacer()
                                    Image(systemName: "checkmark.rectangle")
                                        .tint(.black)
                                        .frame(width: 15,height: 15)
                            }
        
                            }
                            .padding([.horizontal],20)
                            .padding([.vertical],0)
                            .padding([.top,.bottom])
                        }
        
                    }.background(Color(hex: 0xF9F9F9 ))
        
                }
            }
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView()
    }
}
