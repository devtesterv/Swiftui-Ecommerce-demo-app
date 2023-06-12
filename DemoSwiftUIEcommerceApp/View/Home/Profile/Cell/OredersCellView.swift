//
//  OredersCellView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 17/02/23.
//

import SwiftUI

struct OredersCellView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                    HStack{
                        Text("Orders no : 659879")
                            .font(.headline)
                            .padding(.top,10)
                        Spacer()
                        Text("12-02-2023")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    HStack{
                        Text("Tracking number :")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("ABCD123456")
                            .foregroundColor(.primary)

                    }.padding(.top,15)
                HStack{
                    HStack{
                        Text("Quantity :")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("3")
                            .foregroundColor(.primary)

                    }.padding(.top,15)
                    Spacer()
                    HStack{
                        Text("Total amount :")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("120$")
                            .foregroundColor(.primary)

                    }.padding(.top,15)
                }
            }

            HStack{
                VStack(alignment: .trailing) {
                    Button(action: {

                    }) {
                        VStack (alignment: .leading, spacing: 0) {
                            Text("Details")
                                .frame(width:100,height: 10)
                                .font(.system(size: 18))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 1)
                                )

                        }


                    }
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Button(action: {

                    }) {
                        VStack (alignment: .leading, spacing: 0) {
                            Text("Delivered")
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                                .foregroundColor(.green)
                                .padding()
                                .frame(height: 45)
                        }
                            .clipShape(Capsule())
                    }
                }
            }
        }.padding()

    }
}

struct OredersCellView_Previews: PreviewProvider {
    static var previews: some View {
        OredersCellView()
    }
}
