//
//  ItemDetailView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 06/02/23.
//

import SwiftUI

struct ItemDetailViewl: View {
   
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("Screenshot1")
                    .resizable()
                    .scaledToFit()
                Text("Photo: Screenshot1")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Product name")
                        .font(.headline)
                    Text("$ 1000")
                }
                Spacer()
                HStack{
                    ForEach(0..<5) { item in
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width:15,height:15)
                            .foregroundColor(.yellow)
                    }
                    Text("(5)")
                        .fontWeight(.regular)
                }.padding()
            }.padding()
            Text("Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
                .padding()

            Button("Order This") {
//                order.add(item: item)
            }
            .font(.headline)
            .foregroundColor(.brown)
            Spacer()
        }
        .navigationTitle("Item detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailViewl()
        }
    }
}
