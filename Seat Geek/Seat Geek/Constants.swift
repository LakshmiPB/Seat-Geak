//
//  Constants.swift
//  Seat Geek
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import UIKit

struct Constants {
  
    static let ImageDownloadCompletionNotificationName = Notification.Name(rawValue: "com.demo.seatgeek.imagedownloadcompleted")
    private static let SeatGeekAPIClientKey = "MjE5MzA4ODV8MTYyMTEwNDIxNi4wNTA5NDg0"
    private static let seatGeekAPIUrl = "https://api.seatgeek.com/2/events?client_id=\(Constants.SeatGeekAPIClientKey)"
    static func sportsEventsListDownloadURL(withQueryParam queryParam:String)->String {
        return Constants.seatGeekAPIUrl + "&q=" + queryParam
    }
  
}
