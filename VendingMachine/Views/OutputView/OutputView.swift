//
//  OutputView.swift
//  VendingMachine
//
//  Created by hw on 02/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class OutputView {
    
    static func printBeverage(_ drink: Drinkable){
        let output = { (_ drink:  Drinkable) in
            print(drink)
        }
        drink.display(printFormat: output)
    }
    
    static func printDrinkMenuListWithNumber (_ vendingmachine: VendingMachine){
        let drinkStockInfoFormat = {
            (sortedMenutable: [(key: Int, value: DrinkItemList)]) in
                sortedMenutable.forEach{ (key: Int, value: DrinkItemList) in
                    print("\(key)) \(value.description) ")
            }
        }
        vendingmachine.displayDrinkMenuList(printFormat: drinkStockInfoFormat)
    }
    
    static func printInitialDrinkMenuList(_ vendingmachine: VendingMachine){
        let printDrinkMenuListFormat = {
            (sortedMenutable: [(key: Int, value: DrinkItemList)]) in
            print("=>", terminator: " ")
                sortedMenutable.forEach{ (key: Int, value: DrinkItemList) in
                    print( "\(value.drinkName)(\(value.drinkStockList.count)개)", terminator: " ")
            }
            print()
        }
        vendingmachine.displayDrinkMenuList(printFormat: printDrinkMenuListFormat)
    }
    static func showCurrentBalanceInfo(_ vendingmachine: VendingMachine) {
        let printBalanceFormat = { (balance: Int) in
            print("현재 투입한 금액이 \(balance)원입니다.", terminator: " ")
            print("다음과 같은 음료가 있습니다.\n")
        }
        vendingmachine.showCurrentBalanceInfo(printFormat: printBalanceFormat)
    }
    
    static func showCurrentEarningInfo(_ vendingmachie: VendingMachine){
        let printEarningFormat = { (earning: Int) in
            print("현재 자판기 수익은 \(earning)원 입니다.", terminator: " ")
            print("재고 상태는 다음과 같습니다.\n")
        }
        vendingmachie.showCurrentEarningInfo(printFormat: printEarningFormat)
    }
    
    static func selectMenuInfo(){
        print("\(StateType.chargeMoney.description)")
        print("\(StateType.sell.description)")
        print("\(StateType.modeSelect.description)")
    }
    
    static func selectAdminMenuInfo(){
        print("\(StateType.addStock.description)")
        print("\(StateType.removeStock.description)")
        print("\(StateType.modeSelect.description)")
    }
    static func selectModeInfo(){
        print("자판기를 시작합니다.")
        print("\(ModeType.adminMode.description)")
        print("\(ModeType.userMode.description)")
    }
    static func printErrorMessage(_ error: VendingMachineError){
        print("================")
        print(error.description)
        print("================")
    }
    static func printSellingMessage(name : String, price: String){
        print("\(name)을 구매하셨습니다. \(price)원을 차감합니다")
    }
    static func printDrinkNumberQuantity(){
        print("음료수 번호와 수량을 입력하세요 (ex: 1 15)")
    }
    
    static func printAddStockMessage(name: String, count: String){
        print("\(name)를\(count)개 충전하였습니다.")
    }
    
    static func printRemoveStockMessage(name: String, count: String){
        print("\(name)를\(count)개 비웠습니다.")
    }
}