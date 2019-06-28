//
//  DetailSwiftUIView.swift
//  
//
//  Created by nunzio giulio caggegi on 18/06/2019.
//

import SwiftUI

struct DetailSwiftUIView : View {
    
    var client: Client
    
    var body: some View {
        NavigationView {
            CircleImage(imageStr: client.image, widthMultiplier: 0.5, heightMultiplier: 0.5)
        }
    }
}

#if DEBUG
struct DetailSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        DetailSwiftUIView(client: Shared.sharedSettings.buildClient().first!)
    }
}
#endif
