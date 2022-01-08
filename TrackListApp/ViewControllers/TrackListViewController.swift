//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by  BoDim on 08.01.2022.
//

import UIKit

class TrackListViewController: UITableViewController {

    private var trackList = Track.getTrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let track = trackList[indexPath.row]
        
        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.artist)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? TrackDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let track = trackList[indexPath.row]
        detailsVC.track = track
    }
  

}
