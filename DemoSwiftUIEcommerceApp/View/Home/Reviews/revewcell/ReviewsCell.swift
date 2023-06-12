//
//  ReviewsCell.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 24/02/23.
//

import SwiftUI

struct ReviewsCell: View {
    var body: some View {
        ZStack{
           
            ZStack{
                HStack{
                    VStack{
                        ZStack(alignment: .topLeading) {
                            Image("Screenshot1")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 75,height: 75)
                            
                        }.offset(x:-15,y:-30)
                        Spacer()
                    }
                    
                    VStack{
                        HStack {
                            VStack(alignment: .leading) {
                                Text("User name")
                                    .font(.headline)
                                HStack{
                                    ForEach(0..<3) { item in
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width:10,height:15)
                                            .foregroundColor(.yellow)
                                    }
                                }
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Jan 5 2023").font(Font.system(size: 15)).foregroundColor(.secondary)
                            }
                        }.padding(.leading,-50)
                            .padding(.trailing,25)
                            .padding(.top,35)
                        HStack() {
                            Text("Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ")
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                            .padding(.leading,-50)
                            .padding(.trailing,25)
                    }
                    HStack{
                        
                        Spacer()
                        Button(action:{
                            
                        }) {
                            HStack(alignment: .center, spacing: 10) {
                                Text("Helpful")
                                    .font(Font.system(size: 15))
                                    .foregroundColor(.secondary)
                                Image(systemName: "hand.thumbsup.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.black.opacity(0.5))
                                
                            }.foregroundColor(.black)
                        }
                        
                    }.padding()
                }
                   }.background(
                       RoundedRectangle(cornerRadius: 10)
                           .fill(Color.white)
                           .shadow(color:.gray.opacity(0.5), radius: 1, x: 0, y: 0)
                   )
               
               
            }
           
        }
        
    }
}

struct ReviewsCell_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsCell()
    }
}
