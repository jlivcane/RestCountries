//
//  NetworkManager.swift
//  RestCountries
//
//  Created by jekaterina.livcane on 16/09/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static private let jsonUrl = "https://restcountries.eu/rest/v2/all"
    
    static func fetchData(comletion: @escaping ([Country]) -> ()) {
        
        AF.request(jsonUrl).validate().responseJSON { jsonData in
            switch jsonData.result{
            case .success(let value):
                let countries = Country.getArray(from: value)
                comletion(countries ?? [])
            case .failure(let error):
                print("Error", error)
            }
        }
    }
    
}
