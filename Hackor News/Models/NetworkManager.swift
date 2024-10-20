//
//  NetworkManager.swift
//  Hackor News
//
//  Created by Aavhan Chatse on 20/10/24.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Posts]()

    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page#") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(PostData.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
