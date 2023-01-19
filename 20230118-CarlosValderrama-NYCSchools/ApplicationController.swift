//
//  ApplicationController.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import Foundation

class ApplicationController {
    
    let network = NetworkCoordinator()
    
    lazy var schoolListViewModel: SchoolListViewModel = {
        SchoolListViewModel(application: self)
    }()
}
