//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by  BoDim on 08.01.2022.
//

import UIKit

class TrackListViewController: UITableViewController {

    private var viewModel: TrackListViewModelProtocol! {
        didSet {
            viewModel.fetchTracks {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = TrackListViewModel()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TrackTableViewCell
        cell.viewModel = viewModel.cellViewModel(at: indexPath)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentTrack = viewModel.trackList.remove(at: sourceIndexPath.row)
        viewModel.trackList.insert(currentTrack, at: destinationIndexPath.row)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailsViewModel = viewModel.detailsViewModel(at: indexPath)
        performSegue(withIdentifier: "trackDetails", sender: detailsViewModel)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? TrackDetailsViewController else { return }
        detailsVC.viewModel = sender as? TrackDetailsViewModelProtocol
    }
  

}
