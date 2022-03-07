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
    var viewModel: TrackDetailsViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createForm()
    }
    
    private func createForm() {
        coverImageView.image = viewModel.trackImage
        trackNameLabel.text = viewModel.trackName
    }
}
