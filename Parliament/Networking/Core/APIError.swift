//
//  APIError.swift
//  Parliament
//

import Foundation

enum APIError: Error {
    case networkError(Error)
    case decoding
    case invalidUrl
    case invalidResponse
    case statusCode(Int)
}
