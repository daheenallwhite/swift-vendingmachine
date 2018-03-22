//
//  Americano.swift
//  VendingMachine
//
//  Created by Choi Jeong Hoon on 2018. 3. 8..
//  Copyright © 2018년 JK. All rights reserved.
//

import Foundation
class Americano: Coffee {
    private let espresso: Espresso
    init(_ brand: String, _ weight: Int, _ price: Int, _ name: String, _ manufactured_date: String, _ sizeType: CoffeeSize, _ espresso: Espresso) {
        self.espresso = espresso
        super.init(brand, weight, price, name, manufactured_date, sizeType)
    }
}

enum Espresso {
    case oneShot, twoShot, threeShot
}