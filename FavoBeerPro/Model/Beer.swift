//
//  Beer.swift
//  FavoBeerPro
//
//  Created by Vladislav on 15.08.2021.
//

import Foundation

class Beer: Codable, Equatable {
    
    static func == (lhs: Beer, rhs: Beer) -> Bool {
        return lhs.name == rhs.name
    }
    
    let name: String?
    let abv: Float?
    let ibu: Float?
    let ebc: Float?
    var favorite: Bool?
    
    var _favorite: Bool {
        get {
            
            // first initialisation
            if favorite == nil {
                let favoriteBeers = LocalDataManager().loadData()
                
                for favoriteBeer in favoriteBeers {
                    if name == favoriteBeer.name {
                        return true
                    }
                }
                
                return false
            } else {
                return favorite!
            }
        }
        set {
            favorite = newValue
        }
    }
}
