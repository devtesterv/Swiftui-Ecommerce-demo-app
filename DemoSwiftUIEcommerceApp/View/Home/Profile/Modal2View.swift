//
//  ModalView.swift
//  SwiftUIByExample
//
//  Created by CIPL1283 on 16/02/23.
//

import SwiftUI

struct Modal2View: View {
   
    @Binding var isShowing: Bool
    @State private var curleight: CGFloat = 400
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    @State private var isDragging = false
    @State private var prevDragTranslation = CGSize.zero
    var dragGesture: some Gesture {
        DragGesture (minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
                if isDragging {
                    isDragging = true
                }
                let dragAmount = val.translation.height - prevDragTranslation.height
                if curleight > maxHeight || curleight < minHeight {
                    curleight -= dragAmount / 6
                } else {
                    curleight -= dragAmount
                }
                prevDragTranslation = val.translation
            }
            .onEnded { val in
                prevDragTranslation = .zero
                isDragging = false
                if curleight > maxHeight {
                    curleight = maxHeight
                } else if curleight < minHeight {
                    curleight = minHeight
                }
            }
    }
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    var dragPercentage: Double {
        let res = Double((curleight - minHeight) / (maxHeight - minHeight))
        return max(0, min(1, res))
        
    }
    private var button: some View {
        Button(
            action: {
                isShowing = true
            },
            label: {
                Text("Show action sheet").padding()
            }
        )
    }
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            

            if isShowing {
                Color.black
                    .opacity (startOpacity + (endOpacity - startOpacity) * dragPercentage)
//                    .opacity (0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                mainView
                .transition(.move(edge: .bottom))
            }else{
                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea ()
        .animation (.easeInOut)
        
    }
    var mainView : some View{
        VStack{
            ZStack {
                Capsule ()
                    .frame (width: 40, height: 6)
                    .frame (height: 40)
                    .frame (maxWidth: .infinity)
                .background (Color.white.opacity (0.00001))
            }.gesture(dragGesture)
            
            ZStack{
                
                VStack{
                    PasswordChangeView()
                }
            }
            Spacer()
        }.frame(height: curleight)
            .padding(.bottom, 35)
        .frame(maxWidth: .infinity)
        .background(Color(hex: 0xF9F9F9 ))
        .animation(isDragging ? nil : .easeInOut (duration: 0.45))
        .onDisappear{ curleight = minHeight }
    }
   
}

struct Modal2View_Previews: PreviewProvider {
    static var previews: some View {
        PasswordChangeView()
    }
}
