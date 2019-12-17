//
//  PodcastSearchAPI.swift
//  FavoritePodCasts2
//
//  Created by Gregory Keeley on 12/16/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import Foundation

struct PodcastSearchAPI {
    static func searchPodcasts(for searchQuery: String, completion: @escaping (Result<[Podcast], AppError>) -> ()) {
        let searchQuery = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        let podcastSearchEndpointURL = ""
        guard let url = URL(string: podcastSearchEndpointURL) else {
            completion(.failure(.badURL(podcastSearchEndpointURL)))
            return
        }
        let request = URLRequest(url: url)
        NetworkHelper.shared.performDataTask(endpointURLString: request, httpMethod: "json", httpBody: ) { (result) in
            switch result {
            case .failure(let appError):
                
            }
        }
    }
}
