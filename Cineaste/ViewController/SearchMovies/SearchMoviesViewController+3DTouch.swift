//
//  SearchMoviesViewController+3DTouch.swift
//  Cineaste
//
//  Created by Felizia Bernutz on 21.07.18.
//  Copyright © 2018 spacepandas.de. All rights reserved.
//

import UIKit

extension SearchMoviesViewController: UIViewControllerPreviewingDelegate {
    func previewingContext(_ previewingContext: UIViewControllerPreviewing,
                           viewControllerForLocation location: CGPoint) -> UIViewController? {

        guard let path = tableView.indexPathForRow(at: location),
            let cell = tableView.cellForRow(at: path),
            let storageManager = storageManager
            else { return nil }

        previewingContext.sourceRect = cell.frame

        let detailVC = MovieDetailViewController.instantiate()
        detailVC.configure(with: .network(movies[path.row]),
                           type: .search,
                           storageManager: storageManager)
        return detailVC
    }

    func previewingContext(_ previewingContext: UIViewControllerPreviewing,
                           commit viewControllerToCommit: UIViewController) {
        navigationController?.pushViewController(viewControllerToCommit,
                                                 animated: true)
    }
}
