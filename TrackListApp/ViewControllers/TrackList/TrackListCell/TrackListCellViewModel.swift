//
//  TrackListCellViewModel.swift
//  TrackListApp
//
//  Created by  BoDim on 07.03.2022.
//

import Foundation
import UIKit

protocol TrackListCellViewModelProtocol: AnyObject {
    var song: String { get }
    var artist: String { get }
    var imageData: UIImage? { get }
    
    init(track: Track)
}

class TrackListCellViewModel: TrackListCellViewModelProtocol {
    var song: String {
        track.song
    }
    
    var artist: String {
        track.artist
    }
    
    var imageData: UIImage? {
        UIImage(named: track.artist)
    }
    
    private let track: Track
    
    required init(track: Track) {
        self.track = track
    }
    
}
