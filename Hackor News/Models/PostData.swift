// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launchDetails = try? JSONDecoder().decode(LaunchDetails.self, from: jsonData)

import Foundation

// MARK: - PostData

struct PostData: Codable {
    let hits: [Posts]
}

// MARK: - Posts

struct Posts: Codable, Identifiable {
    let objectID: String
    let points: Int
    let title: String
    let url: String?

    var id: String {
        return objectID
    }
}
