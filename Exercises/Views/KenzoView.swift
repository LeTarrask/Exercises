////
////  KenzoView.swift
////  Exercises
////
////  Created by Alex Luna on 25/02/2021.
////
//
//import SwiftUI
//
//// https://www.instagram.com/p/CLou6OKgZbz/
//// copiei o código do post, mas esta view precisa de vários outros views internos. pode ser um exercício construir todas elas.
//
//struct KenzoView: View {
//    
//    @State var selected = colorData
//    @State var isBlue = false
//    @State var checkout = false
//    @State var selectedSize = 0
//    
//    var body: some View {
//        ZStack(alignment: .bottom) {
//            content
//                .navigationBarTitle("Beach Slipers", displayMode: .inline)
//                .overlay(BottomBar(checkout: $checkout)
//                            .opacity(checkout ? 0 : 1 ), alignment: .bottom)
//            VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
//                .edgesIgnoringSafeArea(.all)
//                .opacity(checkout ? 1 : 0)
//                .onTapGesture{ checkout.toggle() }
//            if checkout {
//                CheckoutView(checkout: $checkout)
//                    .transition(.moveAndFade)
//                    .animation(.easeInOut(duration: 0.7))
//            }
//        }
//    }
//    
//    var content: some View {
//        ScrollView {
//            StretchingHeader {
//                ProductionAsset(isBlue: $isBlue)
//            }
//            VStack(alignment: .leading, spacing: 20) {
//                ProductSize(selectedSize: $selectedSize)
//                ProductPrice()
//                HStack(spacing: 15) {
//                    ForEach(selected.indices) { item in
//                        CirclePickerView(selected: selected[item], isBlue: $isBlue)
//                    }
//                }
//                Spacer()
//            }.padding()
//        }
//    }
//}
//
//struct KenzoView_Previews: PreviewProvider {
//    static var previews: some View {
//        KenzoView()
//    }
//}
