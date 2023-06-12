//
//  HomeView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL0957 on 01/02/23.
//

import SwiftUI


struct HomeView: View {
    @State private var selectedIndex: Int = 0
    
    private let categories = ["All","Dress","Shoes","Bages","Kids","Casuales","Formales"]
    var body: some View {
        VStack{
            VStack {
                AppBarView()
                    .background(Color("BG"))
            }
            ZStack{
                ScrollView{
                    VStack(alignment: .leading){
                        TitleBarView()
                            .padding()
                        SearchView()
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< categories.count) { i in
                                    Button(action: {selectedIndex = i}) {
                                        CategoryView(isActive: selectedIndex == i, text: categories[i])
                                    }
                                }
                                
                            }
                            .padding()
                        }
                        Text("StageOne")
                            .font(
                                .custom("PlayfairDisplay-Black",
                                        fixedSize: 25)
                                .weight(.black)
                            )
                            .padding()
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 4) { i in
    //                                ProductCardView(image: Image("Screenshot1"), size: 200)
                                    HomeItemCellView()
                                }
                                .padding(.leading)
                            }
                        }
                        Text("StageTwo")
                            .font(
                                .custom("PlayfairDisplay-Black",
                                        fixedSize: 25)
                                .weight(.black)
                            )
                            .padding()
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 4) { i in
    //                                ProductCardView(image: Image("Screenshot1"), size: 200)
                                    HomeItemCellView()
                                }
                                .padding(.leading)
                            }
                        }
                        
                    }
                }
            }
        }.background(Color("BG"))
       
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}


struct AppBarView: View {
    var body: some View {
        HStack{
            Button(action: {
                
            }) {
                Image("Menu")
                    .padding()
                    .frame(width:50,height:50)
                    .background(.white)
                    .cornerRadius(10)
            }
            Spacer()
            Button(action: {
                
            }) {
                Image("Screenshot1")
                    .resizable()
                    .scaledToFill()
                    .frame(width:50,height:50)
                    .background(.white)
                    .cornerRadius(10)
            }
            
        }.padding()
//            .background(.yellow)
    }
}
struct TitleBarView: View {
    var body: some View {
        Text("Fashion \n")
//            .font(
//                .custom("PlayfairDisplay-Black",
//                        fixedSize: 30)
//                .weight(.black)
//            )
            .fontWeight(.bold)
            .font(.system(size: 25))
        + Text("Sale")
//            .font(
//                .custom("PlayfairDisplay-Regular",
//                        fixedSize: 30)
//                .weight(.black)
//            )
            .fontWeight(.bold)
            .font(.system(size: 25))
          
    }
}

struct SearchView: View {
    @State private var search : String = ""
    var body: some View {
        HStack{
            HStack{
                TextField("Search...", text: $search)
                
                Button(action: {
                    
                }) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .frame(width:25,height:25)
                        .foregroundColor(.primary)
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(10)
            
            
        } .padding(.horizontal)
//            .background(.red)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color(.brown) : Color.black.opacity(0.5))
            if (isActive) { Color(.brown)
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
//        .background(.gray)
        .padding(.trailing)
    }
}

struct ProductCardView: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        VStack{
            //Image("Screenshot1")
            image
                .resizable()
                .frame(width: size,height:200 * (size/210))
                .cornerRadius(10)
                .padding(.top,8)
            Text("Product name")
                .font(.headline)
                .fontWeight(.bold)
            HStack{
                ForEach(0..<5) { item in
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width:15,height:15)
                        .foregroundColor(.yellow)
                }
                Spacer()
                Text("$1000")
                    .fontWeight(.regular)
            }.padding()
            
        }
        
        .frame(width:210)
        .background(.white)
        .cornerRadius(10)
        .background(.blue)
    }
}
struct MenuContent: View {
    var body: some View {
        List {
            Text("My Profile").onTapGesture {
                print("My Profile")
            }
            Text("Posts").onTapGesture {
                print("Posts")
            }
            Text("Logout").onTapGesture {
                print("Logout")
            }
        }
    }
}
