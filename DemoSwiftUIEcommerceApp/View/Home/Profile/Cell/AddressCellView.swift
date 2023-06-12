//
//  AddressCellView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 21/02/23.
//

import SwiftUI

struct AddressCellView: View {
    @State var isMarked:Bool = false
    
    var body: some View {
        HStack {
           
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("place name")
                        .font(.headline)
                        .padding(.top,10)
                    Text("shopping address shopping address shopping address shopping address shopping address shopping address shopping address shopping address")
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(.black)
                        .font(.body)
                   
                    HStack{
                        Button(action:{
                                   self.isMarked.toggle() /// just toggle without closure
                               }) {
                                   HStack(alignment: .center, spacing: 10) {
                                       Image(systemName: self.isMarked ? "checkmark.square.fill" : "square")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 20, height: 20)
                                       Text("Use as the shopping address")
                                       .font(Font.system(size: 15))
//                                       .foregroundColor(Color.black.opacity(1))
                                       Spacer()
                                   }.foregroundColor(.black)
                               }
                              
                        
                    }
                   
                }
            }.padding()
            Spacer()
            VStack(alignment: .trailing) {
                Button(action: {
                    
                }) {
                    Text("Edit")
                        .foregroundColor(.red)
                }
                Spacer()
            }
            .padding(.top,8)
            .padding([.bottom,.trailing],10)
           
        }
        .background(.white)
            .cornerRadius(10)
            .padding()
    }
}

struct AddressCellView_Previews: PreviewProvider {
    static var previews: some View {
        AddressCellView()
    }
}
