//
//  User.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 21.09.2023.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthdate: Date = Date()
    var extraNapkins: Bool = false
    var frequentRefills: Bool = false
}


/*
 Codable olmasının nedeni @AppStorage için verinin dataya daha sonra userdefaults verisine dönüştürülecek olması.
 */
