//
//  TestRowSwiftUI.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 11/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import SwiftUI
import Foundation

struct TestRowSwiftUI : View {
    var client: Client

    var body: some View {
        
        VStack {
            HStack {
                CircleImage.init(imageStr: client.image!, widthMultiplier: 0.2, heightMultiplier: 0.1)
                
                
                VStack(alignment: .leading) {
                    Text("name: \(client.name)")
                        .font(.title)
                        .lineLimit(nil)
                        .minimumScaleFactor(0.5)
                    Spacer()
                    Text("address: \(client.address)")
                        .font(.title)
                        .lineLimit(nil)
                        .minimumScaleFactor(0.5)
                    Spacer()
                    Text("age: " + String(client.age))
                        .font(.callout)
                        .lineLimit(nil)
                }
                
                if client.isFavorite {
                    Image(systemName: "star.fill")
                        .imageScale(.large)
                        .foregroundColor(.yellow)
                    }
                }.frame(width: UIScreen.main.bounds.width * 0.9, height: 120, alignment: .leading)            
        }
    }
}

#if DEBUG
struct TestRowSwiftUI_Previews : PreviewProvider {
    static var previews: some View {
        TestRowSwiftUI(client: Shared.sharedSettings.buildClient().first!)
    }
}
#endif
