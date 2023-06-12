//
//  ItemListView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 06/02/23.
//

import SwiftUI

struct ItemListView: View {
    var body: some View {
        HStack {
            Image("Screenshot1")
                .resizable()
                .frame(width: 50,height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            VStack(alignment: .leading) {
                Text("Product name")
                    .font(.headline)
                Text("Available").foregroundColor(.green)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("Rating : 00")
                    .font(.headline)
                Text("$100")
            }
        }.padding()
    }
 
//    var body: some View {
//        VStack{
//            Image("Screenshot1")
//                .resizable()
//                .frame(width: 210,height:200)
//                .cornerRadius(10)
//                .padding(.top,8)
//            Text("Product name")
//                .font(.headline)
//                .fontWeight(.bold)
//            HStack{
//                ForEach(0..<5) { item in
//                    Image(systemName: "star.fill")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width:15,height:15)
//                        .foregroundColor(.yellow)
//                }
//                Spacer()
//                Text("$1000")
//                    .fontWeight(.regular)
//            }.padding()
//
//        }
//
//        .frame(width:210)
//        .background(.white)
//        .cornerRadius(10)
//
//    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView()
    }
}
