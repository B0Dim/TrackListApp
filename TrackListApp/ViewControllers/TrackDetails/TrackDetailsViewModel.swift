//
//  TrackDetailsViewModel.swift
//  TrackListApp
//
//  Created by  BoDim on 07.03.2022.
//

import Foundation
import UIKit

protocol TrackDetailsViewModelProtocol {
    var trackName: String { get }
    var trackImage: UIImage { get }
    init(track: Track)
}

class TrackDetailsViewModel: TrackDetailsViewModelProtocol {
    var trackName: String {
        track.title
    }
    
    var trackImage: UIImage {
        UIImage(named: track.artist)!
    }
    
    private let track: Track
    
    required init(track: Track) {
        self.track = track
    }
    
    
}
