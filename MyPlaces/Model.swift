//
//  Model.swift
//  MyPlaces
//
//  Created by Zaitsev Aleksey on 16.04.2020.
//  Copyright © 2020 Zaitsev Aleksey. All rights reserved.
//

import Foundation

struct Place {
    
    let name: String
    let location: String
    let type: String
    let image: String
    
    static let restaurantNames = [
        "Burger Heroes", "McDonalds", "KFC", "Burger King", "Рыбы Нет", "MarketPlace", "Чайхона №1", "Domino's", "ДЕПО", "Opyata Bar"
    ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Москва", type: "Ресторан", image: place))
        }
        
        return places
        
    }
    
}
