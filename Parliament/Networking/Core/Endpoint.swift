//
//  Endpoint.swift
//  Parliament
//
//  Created by Patryk on 02/04/2024.
//

import Foundation

protocol Endpoint {
    var path: String { get }
    var method: HTTPMethod { get }
    var params: [String: Any]? { get }
}
