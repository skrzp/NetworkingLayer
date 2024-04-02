//
//  ContentView.swift
//  Parliament
//
//  Created by Patryk on 02/04/2024.
//

import SwiftUI

struct ContentView: View {
    private let api = APIClient()
    @State private var clubs: [Club] = []

    var body: some View {
        List(clubs) { club in
            Text(club.id)
        }
        .task {
            do {
                clubs = try await api.parliamentProvider.clubs()
            } catch {
                print(error)
            }
        }
    }
}

#Preview {
    ContentView()
}
