//
//  Device.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/19/23.
//

import UIKit

struct Device {
    static var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
}

