//
//  Seat_GeekTests.swift
//  Seat GeekTests
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import XCTest
@testable import Seat_Geek

class FavoriteConfigurationsStorageTests: XCTestCase {

    func testValidJasonModelParsing() {
        let event = SportsEventViewModel(withEvent: SportsEvent.dummyEvent())
        XCTAssertNotNil(event.eventTitle)
        XCTAssertNotNil(event.eventID)
        XCTAssertNotNil(event.eventImageUrl)
        XCTAssertNotNil(event.eventTime)
        XCTAssertNotNil(event.eventLocation)
    }
    
    func testInValidJasonModelParsing() {
        let event = SportsEventViewModel(withEvent: SportsEvent.dummyEvent())
        XCTAssertFalse(event.isFavorite())
    }
    
    func testMarkingUnmarkingFavorite() {
        let event = SportsEventViewModel(withEvent: SportsEvent.dummyEvent())
        XCTAssertFalse(event.isFavorite())
        event.markFavorite()
        XCTAssertTrue(event.isFavorite())
        event.unmarkFavorite()
        XCTAssertFalse(event.isFavorite())
    }
}
