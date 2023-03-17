//
//  User.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 2/28/23.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
