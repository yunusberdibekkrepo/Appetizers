//
//  APIError.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
