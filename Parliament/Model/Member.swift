//
//  Member.swift
//  Parliament
//
//  Created by Patryk on 03/04/2024.
//

import Foundation

struct Member: Codable, Identifiable {
    let active: Bool
    let birthDate: String
    let birthLocation: String
    let club: String
    let districtName: String
    let districtNum: Int
    let educationLevel: String
    let email: String
    let firstLastName: String
    let firstName: String
    let id: Int
    let lastFirstName: String
    let lastName: String
    let numberOfVotes: Int
    let profession: String?
    let secondName: String?
    let voivodeship: String
}
