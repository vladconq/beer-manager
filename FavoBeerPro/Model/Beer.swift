//
//  Beer.swift
//  FavoBeerPro
//
//  Created by Vladislav on 15.08.2021.
//

import Foundation

class Beer: Codable {
    let name: String?
    let abv: Float?
    let ibu: Float?
    let ebc: Float?
    var favorite: Bool?
    
    // for code
    var _favorite: Bool {
        get {
            favorite ?? false
        }
        set {
            favorite = newValue
        }
    }
}
