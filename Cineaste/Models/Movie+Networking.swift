//
//  Movie+Networking.swift
//  Cineaste
//
//  Created by Felizia Bernutz on 10.07.18.
//  Copyright © 2018 spacepandas.de. All rights reserved.
//

import UIKit

extension Movie {
    fileprivate static let apiKey = ApiKeyStore.theMovieDbKey

    static func search(withQuery query: String?, page: Int) -> Resource<PagedMovieResult> {
        guard let query = query,
            !query.isEmpty else {
            return latestReleases(page: page)
        }
        let urlAsString = "\(Constants.Backend.url)/search/movie"

        let urlQuery = [
            "query": "\(query)",
            "region": "\(String.regionIso31661)",
            "with_release_type": "3",
            "page": "\(page)"
        ]

        return Resource(url: urlAsString, query: urlQuery) { data in
            do {
                return try JSONDecoder().decode(PagedMovieResult.self, from: data)
            } catch {
                print(error)
                return nil
            }
        }
    }

    static func latestReleases(page: Int) -> Resource<PagedMovieResult> {
        let now = Date()
        let urlAsString = "\(Constants.Backend.url)/discover/movie"

        let query = [
            "region": "\(String.regionIso31661)",
            "release_date.gte": "\(now.oneMonthInThePast.formattedForRequest)",
            "release_date.lte": "\(now.oneMonthInTheFuture.formattedForRequest)",
            "with_release_type": "3",
            "page": "\(page)"
        ]

        return Resource(url: urlAsString, query: query) { data in
            do {
                let paginatedMovies = try JSONDecoder()
                    .decode(PagedMovieResult.self, from: data)
                return paginatedMovies
            } catch {
                print(error)
                return nil
            }
        }
    }

    static func posterUrl(from posterPath: String, for size: Constants.PosterSize) -> URL {
        let urlAsString = "\(size.address)\(posterPath)?api_key=\(apiKey)"
        guard let url = URL(string: urlAsString) else {
            fatalError("Could not create url for poster download")
        }
        return url
    }
}
