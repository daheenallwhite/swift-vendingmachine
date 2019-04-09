//
//  Packages.swift
//  VendingMachine
//
//  Created by Elena on 02/04/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Packages: NSObject {
    
    private var beverage: [Beverage]
    
    init(beverages: [Beverage]) {
        self.beverage = beverages
    }
    
    // 추가
    func add(beverage: Beverage) {
        self.beverage.append(beverage)
    }
    
    // 갯수 파악
    var count: Int {
        return beverage.count
    }
    
    // 상품 하나 빼기
    func removeOneGoods() -> Beverage? {
        if beverage.isEmpty { return nil }
        return beverage.removeFirst()
    }
    
    // 하나씩 출력하기 위해
    override var description: String {
        guard let goods = beverage.first else { return "" }
        return goods.description
    }
    
    // 비어있는지 확인
    func isEmpty() -> Bool {
        return beverage.isEmpty
    }
    
    //뜨거운 음료 찾아주는
    func isHotBeverage() -> Bool {
        for anyThing in beverage {
            guard let coffee = anyThing as? Coffee else { continue }
            if coffee.isHot() { return true }
        }
        return false
    }
    
    //상한 제품
    func goBadBeverages() -> [Beverage] {
        var badBeverages: [Beverage] = []
        for beverage in beverage {
            if beverage.isEqualExpirationDate() { continue }
            badBeverages.append(beverage)
        }
        return badBeverages
    }
    
}