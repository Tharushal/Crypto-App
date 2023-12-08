//
//  Double.swift
//  CryptoApp
//
//  Created by Tharusha Lakshan on 12/8/23.
//

import Foundation

extension Double{
    
    ///convert a double into a currency with 2-6 decimal places
    ///```
    ///convert 1234.56 to $1,234.56
    ///convert 12.3456 to $12.3456
    ///convert 0.123456 to $0.123456
    ///```
    private var currencyFormatter6: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        // formatter.locale = .current //<- default value
        // formatter.currencyCode = "usd" //<- change currency
        // formatter.currencySymbol = "$"//<- change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        
        return formatter
                
    }
    
    ///conver a double into a currency as a string with 2-6 decimal places
    ///```
    ///convert 1234.56 to "$1,234.56"
    ///convert 12.3456 to "$12.3456"
    ///convert 0.123456 to "$0.123456"
    ///```
    
    func asCurrencyWith6Decimals () -> String{
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
}
