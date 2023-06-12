//
//  showModalView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 14/02/23.
//

import SwiftUI

struct ModalView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .bottom){
            if isShowing {
                Color.black
                    .opacity (0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                VStack{
                    VStack {
                        ScrollView{
                            ItemListView()
                               
                        }.frame(width: 350)
                }.background(.yellow)
                }.transition (.move (edge: .leading))
                    .padding()
                    .padding(.leading,-90)
                    .ignoresSafeArea(.all)
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            
            .animation (.easeInOut)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        AllitemView()
    }
}
