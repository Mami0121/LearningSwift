//
//  Kullan_c__Etkiles_imi_C_al_s_mas_UITestsLaunchTests.swift
//  Kullanıcı Etkileşimi ÇalışmasıUITests
//
//  Created by Muhammet on 26.07.2022.
//

import XCTest

class Kullan_c__Etkiles_imi_C_al_s_mas_UITestsLaunchTests: XCTestCase {

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
