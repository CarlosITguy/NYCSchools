//
//  _0230118_CarlosValderrama_NYCSchoolsTests.swift
//  20230118-CarlosValderrama-NYCSchoolsTests
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import XCTest
@testable import _0230118_CarlosValderrama_NYCSchools

final class _0230118_CarlosValderrama_NYCSchoolsTests: XCTestCase {


    func testDownloadSchools() async {
        
        let nc = NetworkCoordinator()
        
        do {
            //let schools = try await nc.
            let schools = try await nc.downloadSchools()
            if schools.count <= 0 {
                XCTFail("Could not download school")
            }
        } catch let error {
            XCTFail("Could not download school")
        }
    }
}
