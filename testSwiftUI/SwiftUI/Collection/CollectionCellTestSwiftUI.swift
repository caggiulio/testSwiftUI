//
//  CollectionCellTestSwiftUI.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 12/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import SwiftUI

struct CollectionCellTestSwiftUI : View {
    
    var client: Client
    
    var body: some View {
        VStack {
            Text(client.name + "" + client.address)
            .lineLimit(nil)
            .font(.title)
            .multilineTextAlignment(.center)
        }.frame(width: 150, height: 300, alignment: .center)
        .background(Color.yellow)
        .cornerRadius(10)
    }
}

#if DEBUG
struct CollectionCellTestSwiftUI_Previews : PreviewProvider {
    static var previews: some View {
        CollectionCellTestSwiftUI(client: Shared.sharedSettings.buildClient().first!)
    }
}
#endif
