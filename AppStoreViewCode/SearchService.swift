//
//  SearchService.swift
//  AppStoreViewCode
//
//  Created by Sergio Cardoso on 07/03/22.
//

import UIKit

class SearchService {
    
    static let shared = SearchService()
    
    func searchApps (text: String, completion: @escaping ([App]?, Error?) -> ()) {
        guard let url = URL(string: "http://localhost/appStore/v1/apps?search=\(text)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                completion(nil, error)
                print(error)
                return
            }
            do {
                guard let data = data else { return }
                let apps = try JSONDecoder().decode([App].self, from: data)
                completion(apps, nil)
            } catch let error {
                completion(nil, error)
                print(error)
            }
        }
        .resume()
    }
}
