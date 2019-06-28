//
//  CollectionTestSwiftUI.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 12/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import SwiftUI

struct CollectionTestSwiftUI : View {
    
    var clients: [Client]
    
    var body: some View {
        ScrollView {
            HStack(spacing: 5) {
                ForEach(clients.identified(by: \.id)) { client in
                    CollectionCellTestSwiftUI(client: client)
                }.padding(10)
            }
        }
        .padding(0.0)
    }
}

#if DEBUG
struct CollectionTestSwiftUI_Previews : PreviewProvider {
    static var previews: some View {
        CollectionTestSwiftUI(clients: Shared.sharedSettings.buildClient())
    }
}
#endif
