//
//  HomeItemCellView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 07/02/23.
//

import SwiftUI

struct HomeItemCellView: View {
    
    let rows = 9
    let columns = 3
    let width = (UIScreen.main.bounds.width/3)-20
    var body: some View{
        HStack {
            VStack(alignment: .center) {
                Image("Screenshot1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 210,height: 200)
                    .cornerRadius(10)
                HStack{
                    VStack(alignment: .leading) {
                        
                        HStack{
                            ForEach(0..<5) { item in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:15,height:15)
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
                            .font(.headline)
                        Text("Price")
                        HStack{
                            Text("~~$150~~")
                            Text("$100").foregroundColor(.red)
                        }
                    }
                    Spacer()
                    VStack() {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                                .font(.title)
                                .frame(width: 15, height: 15)
                                .padding(15)
                                .background(.white)
                                .cornerRadius(30)
                                .padding(.bottom,50)
                                .padding(.top,-50)
                                .shadow(color: Color.gray.opacity(0.7),
                                        radius: 8,
                                        x: 0,
                                        y: 0)
                        }
                    }
                }
            }
        }.padding()
//            .background(.red)
        .cornerRadius(10)
        
    }
}

struct HomeItemCellView_Previews: PreviewProvider {
    static var previews: some View {
        HomeItemCellView()
    }
}
