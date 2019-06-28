//
//  Shared.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 11/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import Foundation
import SwiftyJSON

public class Shared: NSObject {
    
    private override init() { }
    
    static let sharedSettings = Shared()
    
    func buildClient() -> [Client] {
        let path = Bundle.main.path(forResource: "clientData", ofType: "json")!
        let jsonString = try? String(contentsOfFile: path, encoding: String.Encoding.utf8)
        let json = JSON(parseJSON: jsonString!)
        let finalJson = json["clients"].arrayValue
        var list = [Client]()
        for sub in finalJson {
            let client = Client.init(fromJson: sub)
            list.append(client)
        }
        return list
    }
}
