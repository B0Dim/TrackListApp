//
//  Track.swift
//  TrackListApp
//
//  Created by  BoDim on 08.01.2022.
//

struct Track {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
    
    static func getTrackList() -> [Track] {
        [
            Track(artist: "Animal jazz", song: "Ангел"),
            Track(artist: "Animal jazz", song: "Если дышишь"),
            Track(artist: "Animal jazz", song: "3 полоски"),
            Track(artist: "Animal jazz", song: "Стереолюбовь"),
            Track(artist: "Linkin Park", song: "Numb"),
            Track(artist: "Animal jazz", song: "Паук"),
            Track(artist: "Linkin Park", song: "Faint"),
            Track(artist: "Linkin Park", song: "One Step Closer"),
            Track(artist: "Linkin Park", song: "Crawling"),
            Track(artist: "Animal jazz", song: "Ключи"),
            Track(artist: "30 Seconds to Mars", song: "The Kill"),
            Track(artist: "30 Seconds to Mars", song: "Walk On Water"),
        ]
    }
}
