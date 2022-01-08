//
//  TrackDetailsViewController.swift
//  TrackListApp
//
//  Created by  BoDim on 08.01.2022.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coverImageView.image = UIImage(named: track.artist)
        trackNameLabel.text = track.title
    }
    
    

}
