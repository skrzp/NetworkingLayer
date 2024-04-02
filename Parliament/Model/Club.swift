//
//  Club.swift
//  Parliament
//
//  Created by Patryk on 03/04/2024.
//

import Foundation

struct Club: Codable, Identifiable {
    let email: String?
    let fax: String?
    let id: String
    let membersCount: Int
    let name: String
    let phone: String?
}
