//
//  SearchItemTableCell.swift
//  Seat Geek
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import UIKit

class SearchItemTableCell: UITableViewCell {
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventLocation: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var favoriteImage: UIImageView!
    @IBOutlet weak var searchedItemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessibilityIdentifier = "SearchItemTableCell"
        backgroundColor = .clear
        layer.masksToBounds = false
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 5, height: 3)
        layer.shadowColor = UIColor.darkGray.cgColor

        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 8

        self.searchedItemImage.layer.cornerRadius = 4.0
        self.searchedItemImage.clipsToBounds = true
    }
  
    override func prepareForReuse() {
        super.prepareForReuse()
        self.currentSport = nil
    }
    
    var currentSport:SportsEventViewModel? = nil {
        didSet
        {
            self.activityIndicator.stopAnimating()
            self.searchedItemImage?.image = UIImage(named: "NoImage")
            if let unwrappedEvent = self.currentSport {
              
                if let eventImageUrl = unwrappedEvent.eventImageUrl {
                  
                    if let eventImage = SportsEventsDataService.defaultService().image(forSportsEventIMageURL: eventImageUrl) {
                        // Image is already downlaoded and cached, refer it back from the view model which can fetch it back from cache
                        self.searchedItemImage.image = eventImage
                        self.searchedItemImage.contentMode = .scaleAspectFit
                    } else if(SportsEventsDataService.defaultService().isDownloadingImage(forSportsEventImageURL: eventImageUrl)) {
                        // Image is not yet downloaded, its in progress
                        self.searchedItemImage?.image = UIImage(named: "Downloading")
                        self.activityIndicator.startAnimating()
                    } else {
                        // Image not downloaded, hence no image
                        self.searchedItemImage?.image = UIImage(named: "NoImage")
                    }
                }
              
                self.eventTitle.text = unwrappedEvent.eventTitle
                self.eventTitle.accessibilityIdentifier = unwrappedEvent.eventTitle
                self.favoriteImage.isHidden = !unwrappedEvent.isFavorite()
                self.eventTime.text = unwrappedEvent.eventTime
                self.eventLocation.text = unwrappedEvent.eventLocation
              
            } else {
                self.eventTitle.text = "Not Available"
                self.favoriteImage.isHidden = true
                self.eventTime.text = "Not Available"
                self.eventLocation.text = "Not Available"
            }
        }
    }
  
}
