//
//  RequestBuilder.swift
//  Parliament
//
//  Created by Patryk on 02/04/2024.
//

import Foundation

final class RequestBuilder {
    func makeRequest(from endpoint: Endpoint) throws -> URLRequest {
        let url = try makeUrl(from: endpoint)
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.httpBody = makeBody(from: endpoint.params)
        return request
    }

    private func makeBody(from params: [String: Any]?) -> Data? {
        guard let params, !params.isEmpty else {
            return nil
        }
        return try? JSONSerialization.data(withJSONObject: params)
    }

    private func makeUrl(from endpoint: Endpoint) throws -> URL {
        // Implement your services to handle url
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.sejm.gov.pl"
        components.path = "/sejm/term10" + endpoint.path
        guard let url = components.url else {
            throw APIError.invalidUrl
        }
        return url
    }
}
