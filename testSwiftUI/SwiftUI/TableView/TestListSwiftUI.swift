//
//  TestListSwiftUI.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 11/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import SwiftUI

struct TestListSwiftUI : View {
    
    var clients: [Client]
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: self.$showFavoritesOnly) {
                    Text("Favorites only")
                    }
                    .padding()
                
                ForEach(clients) { client in
                    if !self.showFavoritesOnly || client.isFavorite {
                        NavigationButton(destination: DetailSwiftUIView(client: client)) {
                            TestRowSwiftUI(client: client)
                        }.transition(.scale())
                    }
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
                .padding(.top, 60)
                .animation(.fluidSpring())
        }
    }
}

#if DEBUG
struct TestListSwiftUI_Previews : PreviewProvider {
    static var previews: some View {
        TestListSwiftUI(clients: Shared.sharedSettings.buildClient())
    }
}
#endif
