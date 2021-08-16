//
//  AllBeersViewModel.swift
//  FavoBeerPro
//
//  Created by Vladislav on 16.08.2021.
//

import Foundation

protocol AllBeersViewModelDelegate {
    func updateView()
}

class AllBeersViewModel {
    
    // MARK: - Properties
    
    var delegate: AllBeersViewModelDelegate?
    
    var beers = [Beer]() {
        didSet {
            delegate?.updateView()
        }
    }
    
    func getAllBeersCellViewModel(forIndexPath indexPath: IndexPath) -> AllBeersCellViewModel? {
        let beer = beers[indexPath.row]
        return AllBeersCellViewModel(beer: beer)
    }
    
    // MARK: - API
    
    func fetchData() {
        Service.shared.fetchBeerData(completion: { beers in
            self.beers = beers
        })
    }
    
    
    
}
