//
//  FavoritesView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 10/02/23.
//

import SwiftUI

struct FavoritesView: View {
    private var data: [Int] = Array(1...20)
    private let colors: [Color] = [.red, .green, .blue, .yellow]
    private let adaptiveColumns = [ GridItem(.adaptive (minimum: 150)) ]
    @State var doIWantThisViewToShow: Bool = false
    @State var hideShow: Bool = false
    @State private var selectedIndex: Int = 0
    private let categories = ["All","Dress","Shoes","Bages","Kids","Casuales","Formales"]
    var body: some View {
        ZStack{
            ScrollView{
                Spacer(minLength: 50)
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
                HStack {
                    Button(action: {
                        
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
                        doIWantThisViewToShow.toggle()
                    }) {
                        if doIWantThisViewToShow{
                            Image(systemName:"square.grid.3x2.fill")
                                .resizable()
                                .frame(width: 30,height: 20)
                                .foregroundColor(.black)
                            
                        }else{
                            Image(systemName:"rectangle.grid.1x2.fill")
                                .resizable()
                                .frame(width: 30,height: 20)
                                .foregroundColor(.black)
                            
                        }
                    }
                }   .padding(8)
                    .background(Color(hex: 0xCCD1D1))
                    .cornerRadius(10)
                    .padding([.leading,.trailing],10)
                if doIWantThisViewToShow {
                    ExtractedViewOne()
                }else{
                    ExtractedViewTwo()
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
                Spacer()
            }
        }.background(Color(hex: 0xF9F9F9 ))
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
//MARK: ExtractedViewOne
struct ExtractedViewOne: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
            ForEach(0 ..< 4) { i in
                HStack {
                    Image("Screenshot1")
                        .resizable()
                        .frame(width: 125,height: 125)
                        .cornerRadius(10)
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Product name")
                                .font(.headline)
                                .padding(.top,10)
                            Text("item company name")
                                .foregroundColor(.black)
                                .font(.caption)
                            HStack{
                                ForEach(0..<5) { item in
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:10,height:15)
                                        .foregroundColor(.yellow)
                                }
                                Text("(10)")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            Text("Price")
                            HStack{
                                Text("~~$150~~")
                                Text("$100").foregroundColor(.red)
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "xmark")
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(.secondary)
                                .frame(width: 15, height: 15)
                                .padding(8)
                        }
                        Spacer(minLength: 50)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "bag.fill")
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(width: 15, height: 15)
                                .padding(8)
                                .background(.red)
                                .cornerRadius(30)
                                .shadow(color: Color.gray.opacity(0.7),
                                        radius: 8,
                                        x: 0,
                                        y: 0)
                        }
                        
                    }
                    .padding(.top,0)
                }.background(.white)
                    .frame(minHeight:100,maxHeight:125)
                    .cornerRadius(10)
                    .padding([.top,.leading,.trailing],8)
            }
        }
    }
}
//MARK: ExtractedViewTwo
struct ExtractedViewTwo: View {
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 125,maximum: 165))]
    private var data: [Int] = Array(1...20)
    let items = ["S","M","L","XL"]
    let layout = [ GridItem(.flexible()),
                   GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout,content: {
                ForEach(data, id: \.self) { item in
                    
                    ZStack {
                        
                        HStack {
                            VStack(alignment: .leading) {
                                ZStack() {
                                    Image("Screenshot1")
                                        .resizable()
                                        .scaledToFill()
//                                        .frame(width: 125, height: 150)
                                        .frame(minWidth: 125,maxWidth: 165,minHeight: 150,maxHeight: 150)
                                        .background(.white)
                                        .cornerRadius(15)
                                    
                                    Button(action: {
                                        
                                    }) {
                                        Image(systemName: "xmark")
                                            .resizable()
                                            .scaledToFill()
                                            .foregroundColor(.primary)
                                            .frame(width: 10, height: 10)
                                            .padding(8)
                                        
                                    }.background(.red)
                                        .cornerRadius(10)
                                    // .frame(maxHeight: .infinity, alignment: .top)
                                        .offset(x:50,y: -58)
                                }
                                HStack{
                                    VStack(alignment: .leading) {
                                        
                                        HStack{
                                            ForEach(0..<5) { item in
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width:10,height:10)
                                                    .foregroundColor(.yellow)
                                                
                                            }
                                            Text("(10)")
                                                .foregroundColor(.black)
                                                .font(.caption)
                                        }
                                        Text("item company name")
                                            .foregroundColor(.black)
                                            .font(.caption)
                                        Text("Product name")
                                            .font(.body)
                                        Text("Price")
                                            .font(.caption)
                                        HStack{
                                            Text("~~$150~~")
                                                .foregroundColor(.black)
                                                .font(.caption)
                                            Text("$100")
                                                .foregroundColor(.red)
                                                .font(.caption)
                                        }
                                    }
                                   
                                }
                              
                            }.padding(10)
                        }.background(Color.white)
                            .cornerRadius(20)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "bag.fill")
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(.white)
                                .frame(width: 15, height: 15)
                                .padding(8)
                            
                        }.background(.red)
                            .cornerRadius(30)
                            .offset(x:60,y: 110)
                            .shadow(color: Color.gray.opacity(0.7),radius: 8,x: 0,y: 0)
                            .padding(.trailing,10)
                    }.padding(5)
                }}).padding(8)
            
            
//            LazyVGrid(columns: layout) {
//                ForEach (data, id: \.self) { number in
//                    ZStack {
//                        HStack {
//                            VStack(alignment: .leading) {
//                                ZStack() {
//                                    Image("Screenshot1")
//                                        .resizable()
//                                        .scaledToFill()
//                                        .frame(width: 165, height: 165)
//                                        .background(.white)
//                                        .cornerRadius(15)
//
//                                    Button(action: {
//
//                                    }) {
//                                        Image(systemName: "xmark")
//                                            .resizable()
//                                            .scaledToFill()
//                                            .foregroundColor(.primary)
//                                            .frame(width: 10, height: 10)
//                                            .padding(8)
//
//                                    }.background(.yellow)
//                                        .cornerRadius(10)
////                                        .frame(maxHeight: .infinity, alignment: .top)
//                                        .offset(x:60,y: -55)
//                                }
//                                HStack{
//                                    VStack(alignment: .leading) {
//
//                                        HStack{
//                                            ForEach(0..<5) { item in
//                                                Image(systemName: "star.fill")
//                                                    .resizable()
//                                                    .scaledToFill()
//                                                    .frame(width:10,height:10)
//                                                    .foregroundColor(.yellow)
//
//                                            }
//                                            Text("(10)")
//                                                .foregroundColor(.black)
//                                                .font(.caption)
//                                        }
//                                        Text("item company name")
//                                            .foregroundColor(.black)
//                                            .font(.caption)
//                                        Text("Product name")
//                                            .font(.body)
//                                        Text("Price")
//                                            .font(.caption)
//                                        HStack{
//                                            Text("~~$150~~")
//                                                .foregroundColor(.black)
//                                                .font(.caption)
//                                            Text("$100")
//                                                .foregroundColor(.red)
//                                                .font(.caption)
//                                        }
//                                    }
//                                    VStack() {
//                                        Spacer()
//                                        Button(action: {
//
//                                        }) {
//                                            Image(systemName: "bag.fill")
//                                                .resizable()
//                                                .scaledToFill()
//                                                .foregroundColor(.white)
//                                                .font(.title)
//                                                .frame(width: 15, height: 15)
//                                                .padding(8)
//                                                .background(.red)
//                                                .cornerRadius(30)
//                                                .shadow(color: Color.gray.opacity(0.7),
//                                                        radius: 8,
//                                                        x: 0,
//                                                        y: 0)
//                                        }
//                                    }
//                                }
//                            }
//                        }.padding()
//                            .background(Color.white)
//                            .cornerRadius(20)
//
//                    }
//                }
//            }
        }
    }
}


