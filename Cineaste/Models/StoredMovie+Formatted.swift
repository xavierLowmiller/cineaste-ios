//
//  StoredMovie+Formatted.swift
//  Cineaste
//
//  Created by Felizia Bernutz on 10.07.18.
//  Copyright © 2018 notimeforthat.org. All rights reserved.
//

extension StoredMovie {
    var formattedVoteAverage: String {
        if voteCount != 0,
            voteAverage != 0 {
            return voteAverage.formattedWithOneFractionDigit
                ?? String.unknownVoteAverage
        } else {
            return String.unknownVoteAverage
        }
    }

    var formattedReleaseDate: String {
        if let release = releaseDate {
            return release.formatted
        } else {
            return String.unknownReleaseDate
        }
    }

    var formattedRuntime: String {
        if runtime != 0 {
            return "\(runtime.formatted ?? String.unknownRuntime) min"
        } else {
            return "\(String.unknownRuntime) min"
        }
    }

    var formattedWatchedDate: String? {
        guard let watchedDate = watchedDate else { return nil }
        return "\(String.onDate) \(watchedDate.formattedWithTime)"
    }
}
