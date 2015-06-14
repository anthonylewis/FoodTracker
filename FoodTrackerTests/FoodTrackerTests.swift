//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Anthony Lewis on 6/9/15.
//  Copyright © 2015 Anthony Lewis. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests

    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really Bad Rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
}
