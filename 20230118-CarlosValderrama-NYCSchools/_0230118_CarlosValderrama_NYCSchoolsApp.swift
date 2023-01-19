//
//  _0230118_CarlosValderrama_NYCSchoolsApp.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import SwiftUI

@main
struct _0230118_CarlosValderrama_NYCSchoolsApp: App {
    let application = ApplicationController()
    var body: some Scene {
        WindowGroup {
            RootNavigationView(schoolListViewModel: application.schoolListViewModel)
        }
    }
}
