//
//  TrackListViewModel.swift
//  TrackListApp
//
//  Created by  BoDim on 07.03.2022.
//

import Foundation

protocol TrackListViewModelProtocol {
    var trackList: [Track] { get set }
    func fetchTracks(completion: @escaping() -> Void)
    func numberOfRows() -> Int
    func cellViewModel(at indexPath: IndexPath) -> TrackListCellViewModelProtocol
    func detailsViewModel(at indexPath: IndexPath) -> TrackDetailsViewModelProtocol
}

class TrackListViewModel: TrackListViewModelProtocol {
    var trackList: [Track] = []
    
    func fetchTracks(completion: @escaping () -> Void) {
        trackList = Track.getTrackList()
        completion()
    }
    
    func numberOfRows() -> Int {
        trackList.count
    }
    
    func cellViewModel(at indexPath: IndexPath) -> TrackListCellViewModelProtocol {
        let track = trackList[indexPath.row]
        return TrackListCellViewModel(track: track)
    }
    
    func detailsViewModel(at indexPath: IndexPath) -> TrackDetailsViewModelProtocol {
        let track = trackList[indexPath.row]
        return TrackDetailsViewModel(track: track)
    }
    
    
}
