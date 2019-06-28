//
//  ContentView.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 05/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView : View {
    
    var text: String = "Hello Mac"
    var text1: String = "Hello Mac 1"
    var imageStringCircle = "ronaldo"
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .font(.largeTitle)
                    .bold()
                    .color(Color?.init(.blue))
                
                Button.init(action: {
                    
                }) {
                    Text(text1)
                        .font(.title)
                        .bold()
                        .color(Color?.init(.blue))
                }
                
                CircleImage(imageStr: imageStringCircle, widthMultiplier: 1, heightMultiplier: 0.4)
                    .offset(y: 10)
                
                HStack.init(alignment: .firstTextBaseline) {
                    Text("ciao")
                    .font(.footnote)
                    Spacer()
                    Text("ancora")
                }.frame(width: 100, height: 40, alignment: .center)
            }.offset(y: 30)
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
        }
    }

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
