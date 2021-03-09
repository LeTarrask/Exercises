//
//  ZoomInImage.swift
//  Exercises
//
//  Created by Alex Luna on 25/02/2021.
//

import SwiftUI

struct ZoomInImage: View {
    @State private var half = false
    @State private var dim = false
    var imageString: String
    
    var body: some View {
        Image(imageString)
            .resizable()
            .scaledToFit()
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0))
            .onTapGesture {
                self.dim.toggle()
                self.half.toggle()
            }
    }
}

struct ZoomInImage_Previews: PreviewProvider {
    static var previews: some View {
        ZoomInImage(imageString: "alex")
    }
}
