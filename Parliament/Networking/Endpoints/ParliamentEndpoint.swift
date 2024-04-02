//
//  ParliamentEndpoint.swift
//  Parliament
//
//  Created by Patryk on 03/04/2024.
//

import Foundation

enum ParliamentEndpoint {
    case mps
    case mp(id: Int)
    case mpPhoto(id: Int)
    case mpPhotoMini(id: Int)
    case clubs
    case club(id: String)
    case clubLogo(id: String)
}

extension ParliamentEndpoint: Endpoint {
    var path: String {
        switch self {
        case .mps:
            return "/MP"
        case .mp(let id):
            return "/MP\(id)"
        case .mpPhoto(let id):
            return "MP/\(id)"
        case .mpPhotoMini(let id):
            return "/MP/\(id)/photo-mini"
        case .clubs:
            return "/clubs"
        case .club(let id):
            return "/MP\(id)"
        case .clubLogo(let id):
            return "/clubLogo/\(id)"
        }
    }

    var method: HTTPMethod {
        .get
    }

    var params: [String: Any]? {
        nil
    }
}
