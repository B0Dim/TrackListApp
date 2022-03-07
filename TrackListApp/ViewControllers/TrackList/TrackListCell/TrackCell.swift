//
//  TrackCell.swift
//  TrackListApp
//
//  Created by  BoDim on 07.03.2022.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    var viewModel: TrackListCellViewModelProtocol! {
        didSet {
            var content = defaultContentConfiguration()
           
            content.text = viewModel.song
            content.secondaryText = viewModel.artist
            content.image = UIImage(named: viewModel.artist)
            content.imageProperties.cornerRadius = 40
            contentConfiguration = content
        }
    }
}
