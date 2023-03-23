//
//  InjectableServices.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/23/23.
//

import Foundation

protocol InjectableServices {}

extension InjectableServices {
    static var appService: AppService {
        return .shared
    }
}
