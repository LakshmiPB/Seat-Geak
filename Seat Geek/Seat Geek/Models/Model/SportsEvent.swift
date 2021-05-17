//
//  SportsEvent.swift
//  Seat Geek
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import Foundation
import UIKit

class SportsEvent {
  
    var eventTitle = ""
    var eventLocation = ""
    var eventTime:Date? = nil
    var eventImageURL:String = ""
    var eventID = ""
    
    class func sportsEvents(withData:Data)->[SportsEvent]? {
        do {
            if let jsonData = try JSONSerialization.jsonObject(with:withData, options:.allowFragments) as? [String : Any?] {
                return SportsEvent.sportsEvents(withJsonModelData: jsonData)
            }
        }
        catch {
        }
        return nil
    }
    
    
    class func sportsEvents(withJsonModelData:[String : Any?])->[SportsEvent]? {

      if(withJsonModelData.count <= 0) {
            return nil
        }
      
        var allSportsEvent = [SportsEvent]()
      
        if let allEvents = withJsonModelData["events"] as? [[String:Any?]] {
            if(allEvents.count <= 0) {
                return nil
            }
          
            for oneEvent in allEvents {
                let sportsEventObject = SportsEvent()
                if let eventID = oneEvent["id"] as? Int {
                    sportsEventObject.eventID = "\(eventID)"
                }
                if let title = oneEvent["short_title"] as? String {
                    sportsEventObject.eventTitle = title
                }
                if let timestamp = oneEvent["datetime_utc"] as? String {
                    if let time = timestamp.toDate(withFormat: "yyyy-MM-dd'T'HH:mm:ss") {
                        sportsEventObject.eventTime = time
                    }
                }
                if let title = oneEvent["short_title"] as? String {
                    sportsEventObject.eventTitle = title
                }
                if(sportsEventObject.eventTitle == "Rancho Cucamonga Quakes at Lake Elsinore Storm") {
                    print("tt")
                }
                var primaryImage = ""
                var secondaryImage = ""
                if let performers = oneEvent["performers"] as? [[String:Any?]] {
                    for performer in performers {
                        var eventImageUrl = ""
                        if let imageUrl = performer["image"] as? String {
                            eventImageUrl = imageUrl
                        }
                        if let isPrimaryPerformer = performer["primary"] as? Bool {
                            if(isPrimaryPerformer) {
                                primaryImage = eventImageUrl
                            } else {
                                secondaryImage = eventImageUrl
                            }
                        } else {
                            secondaryImage = eventImageUrl
                        }
                    }
                }
              
                if(primaryImage.isEmpty == false) {
                    sportsEventObject.eventImageURL = primaryImage
                } else {
                    sportsEventObject.eventImageURL = secondaryImage
                }
              
                if let venueInfo = oneEvent["venue"] as? [String:Any?] {
                    if let displayLocation = venueInfo["display_location"] as? String {
                        sportsEventObject.eventLocation = displayLocation
                    }
                }
                allSportsEvent.append(sportsEventObject)
            }
        }
      
        return allSportsEvent
    }
  
}
