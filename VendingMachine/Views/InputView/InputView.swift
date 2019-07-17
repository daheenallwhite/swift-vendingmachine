//
//  InputView.swift
//  VendingMachine
//
//  Created by hw on 09/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class InputView {
    static func readInstruction() throws -> (instruction: Int, quantity: Int) {
        guard let instruction = readLine() else {
            throw VendingMachineError.invalidMenuSelectNumberError
        }
        let numberArray : [Int] = try instruction.components(separatedBy: " ").map({ (value) in
            return try Validation.convertStringToNumber(value)
        })
        if StateType.init(value: numberArray[0]) == .modeSelect {
            return (numberArray[0], -1)
        }
        if !Validation.isValidInputPair(numberArray) {
            throw VendingMachineError.invalidInputNumbers
        }
        return (numberArray[0], numberArray[1])
    }
    static func readAdminInstruction() throws -> Int {
        guard let instruction = readLine() else {
            throw VendingMachineError.invalidMenuSelectNumberError
        }
        let number = try Validation.convertStringToNumber(instruction)
        return number
    }
    static func readModeSelection() throws -> Int{
        guard let modeSelection = readLine() else{
            throw VendingMachineError.invalidMenuSelectNumberError
        }
        let number = try Validation.convertStringToNumber(modeSelection)
        return number
    }
}