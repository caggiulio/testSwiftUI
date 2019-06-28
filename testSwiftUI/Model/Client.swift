//
//	Client.swift
//
//	Create by nunzio giulio caggegi on 11/6/2019
//	Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

import Foundation
import SwiftUI
import SwiftyJSON

class Client: Identifiable {
    var id: String
    
	var address : String!
	var age : Int!
	var company : String!
	var email : String!
	var gender : String!
	var isActive : Bool!
	var name : String!
	var phone : String!
    var isFavorite: Bool!
    var image: String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		address = dictionary["address"] as? String
		age = dictionary["age"] as? Int
		company = dictionary["company"] as? String
		email = dictionary["email"] as? String
		gender = dictionary["gender"] as? String
		id = dictionary["id"] as! String
		isActive = dictionary["isActive"] as? Bool
		name = dictionary["name"] as? String
		phone = dictionary["phone"] as? String
        isFavorite = dictionary["isFavorite"] as? Bool
        image = dictionary["image"] as? String
	}
    
    init(fromJson json: JSON!){
        address = json["address"].stringValue
        age = json["age"].intValue
        company = json["company"].stringValue
        email = json["email"].stringValue
        gender = json["gender"].stringValue
        id = json["id"].stringValue
        isActive = json["isActive"].boolValue
        name = json["name"].stringValue
        phone = json["phone"].stringValue
        isFavorite = json["isFavorite"].boolValue
        image = json["image"].stringValue
    }


}
