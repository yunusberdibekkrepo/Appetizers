//
//  Appetizer.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {

    static let sampleAppetizer1 = Appetizer(id: 0001,
        name: "Test name1",
        description: "Test description1",
        price: 22, imageURL: "",
        calories: 19,
        protein: 23,
        carbs: 29)

    static let sampleAppetizer2 = Appetizer(id: 0002,
        name: "Test name2",
        description: "Test description2",
        price: 30, imageURL: "",
        calories: 19,
        protein: 23,
        carbs: 29)

    static let sampleAppetizer3 = Appetizer(id: 0003,
        name: "Test name3",
        description: "Test description3",
        price: 19, imageURL: "",
        calories: 19,
        protein: 23,
        carbs: 29)

    static let sampleApperizers: [Appetizer] = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3]

    static let orderItemOne = Appetizer(id: 0001,
        name: "Test Appetizer One",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let orderItemTwo = Appetizer(id: 0002,
        name: "Test Appetizer Two",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let orderItemThree = Appetizer(id: 0003,
        name: "Test Appetizer Three",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
