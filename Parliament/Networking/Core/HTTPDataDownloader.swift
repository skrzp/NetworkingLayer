//
//  HTTPDataDownloader.swift
//  Parliament
//
//  Created by Patryk on 02/04/2024.
//

import Foundation

protocol HTTPDataDownloader {
    func httpData(for request: URLRequest) async throws -> Data
}

extension URLSession: HTTPDataDownloader {
    func httpData(for request: URLRequest) async throws -> Data {
        let (data, response) = try await self.data(for: request)
        print(request)
        print(response)
        guard let httpResponse = response as? HTTPURLResponse else {
            throw APIError.invalidResponse
        }
        switch httpResponse.statusCode {
        case 200 ... 299:
            return data
        default:
            throw APIError.statusCode(httpResponse.statusCode)
        }
    }
}
