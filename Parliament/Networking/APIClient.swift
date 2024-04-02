//
//  APIClient.swift
//  Parliament
//
//  Created by Patryk on 03/04/2024.
//

import Foundation

final class APIClient {
    let parliamentProvider: ParliamentProvider

    init(httpClient: HTTPClient = HTTPClient()) {
        self.parliamentProvider = ParliamentProvider(client: httpClient)
    }
}
