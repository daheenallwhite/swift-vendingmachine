//
//  TOP.swift
//  VendingMachine
//
//  Created by joon-ho kil on 6/18/19.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class TOP: Coffee {
    private var advertisingModel: String
    
    init(brand: String, ml: Int, price: Int, productDate: String, hot: Bool, expirationDate: String) {
        advertisingModel = "원빈"
        
        super.init(brand: brand, ml: ml, price: price, name: "TOP아메리카노", productDate: productDate, hot: hot, barcode: Barcode.upc(60, 70, 80, 100), expirationDate: expirationDate)
    }
    
    func isAdvertisingModel(_ name: String) -> Bool {
        return advertisingModel == name
    }
}