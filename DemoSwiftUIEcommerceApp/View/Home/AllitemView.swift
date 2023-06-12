//
//  AllitemView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 08/02/23.
//

import SwiftUI

struct AllitemView: View {
    @State private var selectedIndex: Int = 0
    private let categories = ["All","Dress","Shoes","Bages","Kids","Casuales","Formales"]
    
    @State private var selection = ""
        let colors = ["Red", "Green", "Blue", "Black", "Tartan"]
    
    @State private var sort: Int = 0
    @State private var showModal = false
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
                    
                }
                
                ZStack {
                    HStack {
                        
                        Text("Women's tops")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        Spacer()
                    }.padding(.leading,15)
                }
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0 ..< categories.count) { i in
                            Button(action: {selectedIndex = i}) {
                                MenuSelectedItemView(isActive: selectedIndex == i, text: categories[i])
                            }
                        }
                        
                    }
                    .padding()
                }
                HStack {
                    Button(action: {
                        showModal = true
                    }) {
                        Image(systemName:"line.3.horizontal.decrease.circle.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.black)
                        VStack(alignment: .leading) {
                            Text("Filter")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    Menu {
                        Button(action: {
                            
                        }) {
                            VStack(alignment: .leading) {
                                Text("Popular")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                        Button(action: {
                            
                        }) {
                            VStack(alignment: .leading) {
                                Text("Newest")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                        Button(action: {
                            
                        }) {
                            VStack(alignment: .leading) {
                                Text("Price: Low to High")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                        Button(action: {
                            
                        }) {
                            VStack(alignment: .leading) {
                                Text("Price: High to Low")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    } label: {
                        Label("Price range", systemImage: "arrow.up.arrow.down").foregroundColor(.black)
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName:"square.grid.3x2.fill")
                            .resizable()
                            .frame(width: 30,height: 20)
                            .foregroundColor(.black)
                    }
                }   .padding(8)
                    .background(Color(hex: 0xCCD1D1))
                    .cornerRadius(10)
                    .padding([.leading,.trailing],10)
                
                
                //                .background(Color(hex: 0xF9F9F9 ))
                ScrollView(showsIndicators: false){
                    AllitemCellView()
                    AllitemCellView()
                }
            }
            ModalView(isShowing:$showModal)
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
  
    func placeOrder() { }
        func adjustOrder() { }
        func rename() { }
        func delay() { }
        func cancelOrder() { }
}

struct AllitemView_Previews: PreviewProvider {
    static var previews: some View {
        AllitemView()
    }
}
struct MenuSelectedItemView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
        }
//        .frame(width: 100)
            .background(.black)
            .clipShape(Capsule())
    }
}
