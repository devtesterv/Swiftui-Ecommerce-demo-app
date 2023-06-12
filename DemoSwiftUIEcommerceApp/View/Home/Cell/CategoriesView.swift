//
//  CategoriesView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 07/02/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack {
                HStack(spacing: 0) {

                    HStack {
                        Text("Product name")
                            .font(.headline)
                            .padding()
                        Spacer()
                    }
//                    .background(.brown)
                        .frame(minWidth: 0, maxWidth: .infinity)

                    VStack {
                        Image("Screenshot1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: .infinity, height: 150)
                    }
                        .frame(minWidth: 0, maxWidth: .infinity)

                }
                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .background(Color.yellow)
                
        }.background(.white)
        .cornerRadius(25)
        .padding(5)
    }
    
    }


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
