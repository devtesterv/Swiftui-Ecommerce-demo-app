//
//  ReviewView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 23/02/23.
//

import SwiftUI

struct ReviewView: View {
    @State var isMarked:Bool = false
    var body: some View {
        NavigationView {
            VStack{
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
                    }.background(Color(hex: 0xF9F9F9 ))
                        .shadow(
                            color: Color.clear,
                            radius: 0,
                            x: 0,
                            y: 0
                        )
                    
                }.background(Color(hex: 0xF9F9F9 ))
                    .shadow(
                        color: Color.gray.opacity(0.5),
                        radius: 8,
                        x: 0,
                        y: 5
                    )
                
                ReviewRatingCell()
                    .frame(width: .infinity,height: 150)
                HStack{
                    Text("23 ratings")
                        .foregroundColor(.black)
                        .font(.body)
                    Spacer()
                    Button(action:{
                               self.isMarked.toggle() /// just toggle without closure
                           }) {
                               HStack(alignment: .center, spacing: 10) {
                                   Image(systemName: self.isMarked ? "checkmark.square.fill" : "square")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 20, height: 20)
                                   Text("With image")
                                   .font(Font.system(size: 15))
//                                       .foregroundColor(Color.black.opacity(1))
                                  
                               }.foregroundColor(.black)
                           }
                          
                }.padding()
                ScrollView{
                    ReviewsCell()
                        .padding(.top,25)
                        .padding()
                }
            }.background(Color("BG"))
        }
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
