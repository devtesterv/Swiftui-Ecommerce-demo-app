//
//  CategoriesListView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 07/02/23.
//

import SwiftUI

struct CategoriesListView: View {
    @State private var selectedIndex: Int = 0
    private let categories = ["All","Dress","Shoes","Bages","Kids","Casuales","Formales"]
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
                        Text("Categories")
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
                    }
                    
                }.background(Color(hex: 0xF9F9F9 ))
                VStack {
                    ZStack {
                        HStack {
                            Spacer()
                            VStack(spacing: 0) {
                                HStack {

                                    // Text
                                    Text("Women")
                                        .font(Font.system(size: 18, weight: .semibold))
                                        .foregroundColor(Color.red)
                                        .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 0))
                                }
                                .frame(width: 150, height: 52)
                                // Bar Indicator
                                Rectangle().fill(0 == 0 ? Color.red : Color.clear)
                                    .frame(height: 3)
                            }.fixedSize()
                            Spacer()
                            VStack(alignment: .center){
                                Text("men")
                            }.padding()
                            Spacer()
                            VStack(alignment: .center){
                                Text("Kids")
                            }.padding()
                            Spacer()
                        }
                    }
                }
                VStack {
                    Button(action: {
                        print("Log in Cliked")
//                        NavigationLink(destination: RegisterView()){
//
//                        }
                    }) {
                        HStack {
                            Text("VIEW ALL ITEMS")
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
                    }
                    .padding([.horizontal],20)
                    .padding([.vertical],0)
                    .padding([.top,.bottom])
                }.background(Color(hex: 0xF9F9F9 ))
                ScrollView(showsIndicators: false){
//                    Spacer(minLength: 10)
                    CategoriesView()
                    CategoriesView()
                    CategoriesView()
                    CategoriesView()
                    CategoriesView()

                }
//                NavigationView{
//                    List(categories, id: \.self) { contact in
//                        Text(contact)
//                    }
//                }
            }
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}

struct CategoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesListView()
    }
}
