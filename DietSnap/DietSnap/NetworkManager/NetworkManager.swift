//
//  NetworkManager.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

// Network Manager to handle the API request and fetch the JSON data.
import Foundation

class NetworkManager: ObservableObject {
    @Published var homepageData: HomepageData?

    func fetchHomepageData() {
        guard let url = URL(string: "http://52.25.229.242:8000/homepage_v3/") else {
            print("Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching data: \(error)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(HomepageData.self, from: data)
                DispatchQueue.main.async {
                    self.homepageData = decodedData
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        task.resume()
    }
}
