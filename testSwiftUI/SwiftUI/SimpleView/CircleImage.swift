//
//  CircleImage.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 07/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    
    var imageString: String?
    var widthMultiplier: CGFloat?
    var heightMultiplier: CGFloat?
    
    init(imageStr: String, widthMultiplier: CGFloat, heightMultiplier: CGFloat) {
        self.imageString = imageStr
        self.widthMultiplier = widthMultiplier
        self.heightMultiplier = heightMultiplier
    }
    
    var body: some View {
        
            Image(self.imageString!)
                .resizable()
                .aspectRatio(1.4, contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width * widthMultiplier!, height: UIScreen.main.bounds.height * heightMultiplier!, alignment: .center)
        
                //Circle
             .clipShape(Circle(), style: .init(eoFill: true, antialiased: true))
             .overlay(Circle()
             .stroke(Color.black, lineWidth: 4))
                }
            }

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(imageStr: "ronaldo", widthMultiplier: 1, heightMultiplier: 0.4)
    }
}
#endif
