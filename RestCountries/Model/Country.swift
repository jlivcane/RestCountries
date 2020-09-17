//
//  Country.swift
//  RestCountries
//
//  Created by jekaterina.livcane on 16/09/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import Foundation

struct Country {
    
    let name: String?
    let capital: String?
    let region: String?
    
    init(item: [String: Any]){
        name = item["name"] as? String
        capital = item["capital"] as? String
        region = item["region"] as? String
    }
    
    static func getArray(from arrayOfItems: Any) -> [Country]? {
        
        guard let arrayOfCountryItems = arrayOfItems as? Array<[String: Any]> else {return nil}
        return arrayOfCountryItems.compactMap {Country(item: $0)}
    }
    
    
}
