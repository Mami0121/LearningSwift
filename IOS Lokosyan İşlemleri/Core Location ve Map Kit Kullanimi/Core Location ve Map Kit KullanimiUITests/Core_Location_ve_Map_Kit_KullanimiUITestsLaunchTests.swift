//
//  Core_Location_ve_Map_Kit_KullanimiUITestsLaunchTests.swift
//  Core Location ve Map Kit KullanimiUITests
//
//  Created by Muhammet on 7.08.2022.
//

import XCTest

class Core_Location_ve_Map_Kit_KullanimiUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
