//
//  AllitemCellView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 08/02/23.
//

import SwiftUI

struct AllitemCellView: View {
    var body: some View {
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
                Spacer(minLength: 50)
                Button(action: {
                    
                }) {
                    Image(systemName: "heart")
                        .resizable()
                        .foregroundColor(.black)
                        .font(.title)
                        .frame(width: 15, height: 15)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(30)
                        .shadow(color: Color.gray.opacity(0.7),
                                radius: 8,
                                x: 0,
                                y: 0)
                }
            }
            .padding(.top,0)
            .padding([.bottom,.trailing],10)
            
        }.background(.white)
            .frame(minHeight:100,maxHeight:125)
            .cornerRadius(10)
            .padding([.top,.leading,.trailing],5)
//            .background(.gray)
    }
}

struct AllitemCellView_Previews: PreviewProvider {
    static var previews: some View {
        AllitemCellView()
    }
}
