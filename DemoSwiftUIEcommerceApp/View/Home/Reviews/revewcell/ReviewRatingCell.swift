//
//  ReviewRatingCell.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 24/02/23.
//

import SwiftUI

struct ReviewRatingCell: View {
    var body: some View {
        HStack {
            
                VStack(alignment: .leading) {
                    Text("4.3")
                        .font(.largeTitle)
                        .padding(.top,10)
                    Text("23 ratings")
                        .foregroundColor(.black)
                        .font(.caption)
                    Spacer()
                }
            Spacer()
            VStack(alignment: .center) {
                VStack(alignment: .trailing) {
                    HStack{
                        ForEach(0..<5) { item in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10,height:15)
                                .foregroundColor(.yellow)
                        }
                    }
                    HStack{
                        ForEach(0..<4) { item in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10,height:15)
                                .foregroundColor(.yellow)
                        }
                    }
                    HStack{
                        ForEach(0..<3) { item in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10,height:15)
                                .foregroundColor(.yellow)
                        }
                    }
                    HStack{
                        ForEach(0..<2) { item in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10,height:15)
                                .foregroundColor(.yellow)
                        }
                    }
                    HStack{
                        ForEach(0..<1) { item in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10,height:15)
                                .foregroundColor(.yellow)
                        }
                    }
                   
                }
            }
            VStack(alignment: .leading) {
                HStack{
                    ForEach(0..<5) { item in
                        Image(systemName: "")
                            .resizable()
                            .scaledToFill()
                            .frame(width:10,height:8)
                            .foregroundColor(.yellow)
                    }
                }.background(.red)
                    .cornerRadius(30)
                    .padding(.top,5)
                HStack{
                    ForEach(0..<4) { item in
                        Image(systemName: "")
                            .resizable()
                            .scaledToFill()
                            .frame(width:10,height:8)
                            .foregroundColor(.yellow)
                    }
                }.background(.red)
                    .cornerRadius(30)
                    .padding(.top,5)
                HStack{
                    ForEach(0..<3) { item in
                        Image(systemName: "")
                            .resizable()
                            .scaledToFill()
                            .frame(width:10,height:8)
                            .foregroundColor(.yellow)
                    }
                }.background(.red)
                    .cornerRadius(30)
                    .padding(.top,8)
                HStack(alignment: .center){
                    ForEach(0..<2) { item in
                        Image(systemName: "")
                            .resizable()
                            .scaledToFill()
                            .frame(width:10,height:8)
                            .foregroundColor(.yellow)
                            
                    }
                }.background(.red)
                    .cornerRadius(30)
                    .padding(.top,8)
                HStack{
                    ForEach(0..<1) { item in
                        Image(systemName: "")
                            .resizable()
                            .scaledToFill()
                            .frame(width:10,height:8)
                            .foregroundColor(.yellow)
                    }
                }.background(.red)
                    .cornerRadius(30)
                    .padding(.top,8)
               
            }
            Spacer()
            VStack(alignment: .trailing,spacing: 10) {
                Text("23 ratings")
                    .foregroundColor(.black)
                    .font(.caption)
                Text("23 ratings")
                    .foregroundColor(.black)
                    .font(.caption)
                Text("23 ratings")
                    .foregroundColor(.black)
                    .font(.caption)
                Text("23 ratings")
                    .foregroundColor(.black)
                    .font(.caption)
                Text("23 ratings")
                    .foregroundColor(.black)
                    .font(.caption)
            }
        }.background(Color("BG"))
        .padding(5)
    }
}

struct ReviewRatingCell_Previews: PreviewProvider {
    static var previews: some View {
        ReviewRatingCell()
    }
}
