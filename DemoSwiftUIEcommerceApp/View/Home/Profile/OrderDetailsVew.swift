//
//  OrderDetailsVew.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL1283 on 17/02/23.
//

import SwiftUI

struct OrderDetailsVew: View {
    @State private var search = ""
    var body: some View {
        ZStack{
            VStack {
                Spacer(minLength: 75)
                    VStack(alignment: .leading,spacing: 10) {
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
                            Spacer()
                            Text("Delivered")
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                                .foregroundColor(.green)
    //                            .padding()
                                .frame(height: 45)
                        }
                        Text("3 items")
                            .font(.headline)
                    }.padding()
                ScrollView{
                    ForEach(1..<4) { index in
                        HStack{
                            Image("Screenshot1")
                                .resizable()
                                .frame(width: 100,height: 100)
                                .cornerRadius(10)
                            VStack(alignment: .leading,spacing: 5) {
                                Text("Product name")
                                    .font(.headline)
                                    .padding(.top,0)
                                Text("Product name")
                                    .font(.body)
                                    .foregroundColor(.secondary)
                                
                                HStack{
                                    HStack{
                                        Text("Color:").foregroundColor(Color.secondary)
                                        Text("Gray").foregroundColor(Color.primary)
                                    }
                                    HStack{
                                        Text("Size:").foregroundColor(Color.secondary)
                                        Text("L").foregroundColor(Color.primary)
                                    }
                                }
                                HStack{
                                    Text("Unity:").foregroundColor(Color.secondary)
                                    Text("1").foregroundColor(Color.primary)
                                }
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Spacer()
                                Button(action: {
                                    
                                }) {
                                    Text("123$")
                                        .foregroundColor(.primary)
                                        .padding()
                                }
                                
                            }
                            //                        .padding(.top,0)
                            //                        .padding(.trailing,8)
                            //                        .padding(.bottom,50)
                        }.background(Color.white)
                            .cornerRadius(10)
                            .padding([.leading,.trailing],8)
                            .padding(.top,0)
                    }
                    VStack(alignment: .leading,spacing: 10) {
                        HStack{
                            Text("Order Information")
                                .font(.headline)
                                .padding(.top,10)
                            Spacer()
                        }
                    }
                    
                    VStack {
                        HStack(alignment: .top,spacing: 10){
                            Text("Shipping Address:")
                                .font(.headline)
                                .padding(.top,10)
                            Spacer()
                                Text("Order Information Order Information Order Information Order Information")
                                    .padding(.top,10)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                        }
                    }
                    VStack {
                        HStack(alignment: .top,spacing: 10){
                            Text("Payment method:")
                                .font(.headline)
                                .padding(.top,10)
                            Spacer()
                            HStack{
                                Image(systemName: "creditcard")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .frame(width: 35, height: 35)
                                Text("**** **** **** *123")
                                    .padding(.top,10)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                            }
                               
                        }
                    }
                    VStack {
                        HStack(alignment: .top,spacing: 10){
                            Text("Delivery method:")
                                .font(.headline)
                                .padding(.top,10)
                            Spacer()
                                Text("123,15$")
                                    .padding(.top,10)
                                    .padding(.trailing,150)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                        }
                    }
                    VStack {
                        HStack(alignment: .top,spacing: 10){
                            Text("Discount:             ")
                                .font(.headline)
                                .padding(.top,10)
                            Spacer()
                                Text("10% promoco ")
                                    .padding(.top,10)
                                    .padding(.trailing,95)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                        }
                    }
                    VStack {
                        HStack(alignment: .top,spacing: 10){
                            Text("Total Amount:     ")
                                .font(.headline)
                                .padding(.top,10)
                            Spacer()
                                Text("123$")
                                    .padding(.top,10)
                                    .padding(.trailing,160)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                        }
                    }
                }
          
//                Spacer()
                VStack {
                  
                    HStack{
                        Button(action: {
                           
                        }) {
                            HStack {
                                Text("REORDER")
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)

                            }
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(.black, lineWidth: 1)
                                )
//                            .clipShape(Capsule())
                        }
                       
                        Button(action: {
                           
                        }) {
                            HStack {
                                Text("LEAVE FEEDBACK")
                                    .fontWeight(.regular)
                                    .foregroundColor(.white)

                            }
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.red)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                        }
                        
                    }
                }
            }.padding([.leading,.trailing],8)
            
                VStack {
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
                            Text("Orders")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .frame(width: 35, height: 35)
                                    .padding()
                            }
                        }.background(Color(hex: 0xF9F9F9 ))
                        .shadow(
                            color: Color.clear,
                            radius: 0,
                            x: 0,
                            y: 0
                        )
                    }.background(Color(hex: 0xF9F9F9 ))
                        .shadow(
                            color: Color.gray.opacity(0.7),
                            radius: 8,
                            x: 0,
                            y: 8
                        )
                    Spacer()
                }
            
//            Spacer()
    }.background(Color(hex: 0xF9F9F9 ))
        .zIndex(1)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

struct OrderDetailsVew_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailsVew()
    }
}
