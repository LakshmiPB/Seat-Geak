//
//  Seat_GeekTests.swift
//  Seat GeekTests
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import XCTest
@testable import Seat_Geek
extension SportsEvent
{
    class func dummyEvent()->SportsEvent
    {
        let event = SportsEvent()
        event.eventID = UUID().uuidString
        event.eventLocation = "Los Angeles"
        event.eventTime = Date()
        event.eventImageURL = "some url string"
        event.eventTitle = "NBA Finale 2022"
        return event
    }
}
class Seat_GeekTests: XCTestCase
{
    func testEmptyJsonParsing() {
        let event = SportsEvent.sportsEvents(withData: TestData.emptyJson)
        XCTAssertNil(event)
    }
    
    func testInvalidJsonParsing() {
        let event = SportsEvent.sportsEvents(withData: TestData.invalidJson)
        XCTAssertNil(event)
    }
    
    func testValidJsonParsing() {
        let events = SportsEvent.sportsEvents(withData: TestData.validJson)
        XCTAssertNotNil(events)
        XCTAssertTrue(events?.count == 10)
        var iteration = 0
        for event in events! {
            print("Iteration: \(iteration)")
            iteration = iteration + 1
            XCTAssertNotNil(event.eventLocation)
            XCTAssertNotNil(event.eventImageURL)
            XCTAssertNotNil(event.eventTime)
            XCTAssertNotNil(event.eventTitle)
            XCTAssertNotNil(event.eventID)
        }
    }
}
