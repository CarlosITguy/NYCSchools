//
//  NYCSAT.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import Foundation

struct NYCSAT: Decodable {
    let sat_math_avg_score: String?
    let sat_critical_reading_avg_score: String?
    let sat_writing_avg_score: String?
    let num_of_sat_test_takers: String?
}

extension NYCSAT {
    
    static var mock: NYCSAT {
        let string = """
{"dbn":"21K728","school_name":"LIBERATION DIPLOMA PLUS","num_of_sat_test_takers":"10","sat_critical_reading_avg_score":"411","sat_math_avg_score":"369","sat_writing_avg_score":"373"}
"""
        if let data = string.data(using: .utf8) {
            if let result = try? JSONDecoder().decode(NYCSAT.self, from: data) {
                return result
            }
            
        }
        
        return NYCSAT(sat_math_avg_score: "160", sat_critical_reading_avg_score: "175", sat_writing_avg_score: "185", num_of_sat_test_takers: "2000")
    }
    
}
