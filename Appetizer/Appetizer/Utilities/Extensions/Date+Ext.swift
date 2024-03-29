//
//  Date+Ext.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 3/1/23.
//

import Foundation


extension Date {
    
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
