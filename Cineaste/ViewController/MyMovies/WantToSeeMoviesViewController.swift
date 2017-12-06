//
//  WantToSeeMoviesViewController.swift
//  Cineaste
//
//  Created by Felizia Bernutz on 05.12.17.
//  Copyright © 2017 notimeforthat.org. All rights reserved.
//

import UIKit
import CoreData

class WantToSeeMoviesViewController: UIViewController {

    @IBOutlet weak fileprivate var myMoviesTableView: UITableView!
    lazy var fetchedResultsManager = FetchedResultsManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        myMoviesTableView.dataSource = self
        title = "Want to see"

        fetchedResultsManager.delegate = self
        fetchedResultsManager.setup(with: wantToSeeMoviesPredicate) {
            myMoviesTableView.reloadData()
        }
    }
}

extension WantToSeeMoviesViewController: MoviesViewControllerDelegate {
    func beginUpdate() {
        myMoviesTableView.beginUpdates()
    }
    func insertRows(at index: [IndexPath]) {
        myMoviesTableView.insertRows(at: index, with: .fade)
    }
    func deleteRows(at index: [IndexPath]) {
        myMoviesTableView.deleteRows(at: index, with: .fade)
    }
    func endUpdate() {
        myMoviesTableView.endUpdates()
    }
}

extension WantToSeeMoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedResultsManager.controller?.fetchedObjects?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath)
        let obj = fetchedResultsManager.controller?.object(at: indexPath)
        cell.textLabel?.text = obj?.title
        return cell
    }
}
