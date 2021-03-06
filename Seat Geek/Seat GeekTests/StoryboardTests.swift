//
//  StoryboardTests.swift
//  Seat GeekTests
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import XCTest
@testable import Seat_Geek

class StoryboardTests: XCTestCase
{
    func testLoadingAvalableController() {
        let sb = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        XCTAssertNotNil(sb)
        let listVC = sb.instantiateViewController(withIdentifier: "SportsEventsListController")
        let detailsVC = sb.instantiateViewController(withIdentifier: "SportsEventDetailsViewController")
        XCTAssertNotNil(listVC)
        XCTAssertNotNil(detailsVC)
    }
    
    func testRootController() {
        let sb = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        XCTAssertNotNil(sb)
        XCTAssertNotNil(sb.instantiateInitialViewController())
    }
    
    func testIfRootControllerHasNavigationVC() {
        let sb = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        XCTAssertNotNil(sb)
        XCTAssertNotNil(sb.instantiateInitialViewController())
        let navigationVC = sb.instantiateInitialViewController() as? UINavigationController
        XCTAssertNotNil(navigationVC)
        XCTAssertNotNil(navigationVC?.viewControllers)
        XCTAssertTrue(navigationVC!.viewControllers.count > 0)
    }
    
    func testIfRootControllerIsCorrectVC() {
        let sb = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        XCTAssertNotNil(sb)
        let root = sb.instantiateInitialViewController()
        let navigationVC = sb.instantiateInitialViewController() as? UINavigationController
        XCTAssertNotNil(navigationVC)
        XCTAssertNotNil(navigationVC?.viewControllers)
        XCTAssertTrue(navigationVC!.viewControllers.count > 0)
        XCTAssertNotNil(navigationVC!.viewControllers.first! as? SportsEventsListController)
    }
}
