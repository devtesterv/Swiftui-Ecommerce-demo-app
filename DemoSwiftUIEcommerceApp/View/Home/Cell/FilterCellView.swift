//
//  FilterCellView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 08/02/23.
//

import SwiftUI

struct FilterCellView: View {
    @State private var downloadAmount = 0.0
//        let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    let categoyGen = ["All","Women","Men","Boys","Girls","Kids"]
    let items = ["S","M","L","XL"]
    let layout = [ GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())
    ]
    let colors: [Color] = [.black,.gray,.brown,.mint]
    
    var body: some View {
        let rec = RoundedRectangle(cornerRadius: 40)
        VStack (alignment: .leading){
            Text("Product name")
                .padding(.leading,15)
            VStack {
//                ProgressView("", value: downloadAmount, total: 100)
////                           .onReceive(timer)
//                { _ in
//                               if downloadAmount < 100 {
//                                   downloadAmount += 2
//                               }
//                           }
//                ProgressView()
//                ProgressView(value: 1)
                Text("$100")
                ProgressViewExample()
                
            }.padding()
            .background(.white)
        } 
        VStack (alignment: .leading){
            HStack{
                Text("Colors")
                    .padding(.leading,15)
                Spacer()
            }
            HStack {
                HStack {
                    ForEach(colors, id: \.self) { color in
                        Text("")
                            .padding()
                            .frame(width:55,height:55)
                            .background(color)
                            .cornerRadius(40)
                            .overlay(RoundedRectangle(cornerRadius: 40).strokeBorder(Color.white, lineWidth: 1))
                            .padding(2)
                            .overlay(RoundedRectangle(cornerRadius: 40).strokeBorder(Color.red, lineWidth: 1))
                        
                    }
                       }
                Spacer()
            }.padding()
            .background(.white)
           
        }
        VStack (alignment: .leading){
            HStack{
                Text("Sizes")
                    .padding(.leading,15)
                Spacer()
            }
            HStack {
                
                ForEach(items, id: \.self) { item in
                    VStack{
                        Button(action: {
                            
                        }) {
                            Text("\(item)")
                                .font(.system(size: 15))
                                .foregroundColor(.black)
                                .frame(width: 55, height: 55)
                            
                        }
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.secondary))
                        
                        
                    }
                   
                }
                Spacer()
            }.padding()
            .background(.white)
            
        }
        
        VStack (alignment: .leading){
            HStack{
                Text("Categories")
                    .padding(.leading,15)
                Spacer()
            }
            HStack {
                LazyVGrid(columns: layout, content: {
                    ForEach(categoyGen, id: \.self) { item in
                        VStack{
                            Button(action: {
                                
                            }) {
                                Text("\(item)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.black)
                                    .frame(width: 100, height: 45)
                                    
                            }
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.secondary))
                            .padding(.top)

                        }
                    }})
            }.padding()
            .background(.white)
            
        }
        VStack{
            Button(action: {
                
            }) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("My order")
                            .font(.headline)
                            .foregroundColor(.black)
                        Text("Brand names....").foregroundColor(.gray)
                            .padding(.top,3)
                    }
                    Spacer()
                    Image(systemName: "chevron.forward")
                        .tint(.black)
                        .frame(width: 15,height: 15)
            }
            }.padding()
             .background(.white)
        }
    }
}

struct FilterCellView_Previews: PreviewProvider {
    static var previews: some View {
        FilterCellView()
    }
}
struct ProgressViewExample: View {
    @State private var progress = 0.5
    var body: some View {
        VStack {
            
            Slider(value: $progress, in: 0...1)
            
        } .tint(.red) .padding()
        
    }
    
}
