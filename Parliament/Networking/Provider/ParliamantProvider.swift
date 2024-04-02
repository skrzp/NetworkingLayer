//
//  ParliamantProvider.swift
//  Parliament
//
//  Created by Patryk on 03/04/2024.
//

import Foundation

class ParliamentProvider {
    private let client: HTTPClient

    init(client: HTTPClient) {
        self.client = client
    }

    func mps() async throws -> [Member] {
        try await client.data(from: ParliamentEndpoint.mps)
    }

    func mp(_ id: Int) async throws -> Member {
        try await client.data(from: ParliamentEndpoint.mp(id: id))
    }

    func mpPhoto(_ id: Int) async throws -> Data {
        try await client.data(from: ParliamentEndpoint.mpPhoto(id: id))
    }

    func mpPhotoMini(_ id: Int) async throws -> Data {
        try await client.data(from: ParliamentEndpoint.mpPhotoMini(id: id))
    }

    func clubs() async throws -> [Club] {
        try await client.data(from: ParliamentEndpoint.clubs)
    }

    func club(_ id: String) async throws -> Club {
        try await client.data(from: ParliamentEndpoint.club(id: id))
    }

    func clubLogo(_ id: String) async throws -> Data {
        try await client.data(from: ParliamentEndpoint.clubLogo(id: id))
    }
}
