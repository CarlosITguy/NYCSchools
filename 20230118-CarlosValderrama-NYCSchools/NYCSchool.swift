//
//  NYCSchool.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import Foundation

struct NYCSchool: Decodable {
    let dbn: String
    let school_name: String
    let overview_paragraph: String?
    let phone_number: String?
    let school_email: String?
    let website: String?
    
    let primary_address_line_1: String?
    let city: String?
    let zip: String?
    let state_code: String?
}

extension NYCSchool: Identifiable {
    var id: String { dbn }
}

extension NYCSchool {
    
    static var mock: NYCSchool {
        let string = """
{
    "dbn": "02M260",
    "school_name": "Clinton School Writers & Artists, M.S. 260",
    "overview_paragraph": "Students who are prepared for college must have an education that encourages them to take risks as they produce and perform. Our college preparatory curriculum develops writers and has built a tight-knit community. Our school develops students who can think analytically and write creatively. Our arts programming builds on our 25 years of experience in visual, performing arts and music on a middle school level. We partner with New Audience and the Whitney Museum as cultural partners. We are a International Baccalaureate (IB) candidate school that offers opportunities to take college courses at neighboring universities.",
    "phone_number": "212-524-4360",
    "fax_number": "212-524-4365",
    "school_email": "admissions@theclintonschool.net",
    "website": "www.theclintonschool.net",
    "admissionspriority11": "Priority to continuing 8th graders",
    "admissionspriority21": "Then to Manhattan students or residents",
    "admissionspriority31": "Then to New York City residents",
    "grade9geapplicantsperseat1": "19",
    "grade9swdapplicantsperseat1": "9",
    "primary_address_line_1": "10 East 15th Street",
    "city": "Manhattan",
    "zip": "10003",
    "state_code": "NY",
}
"""
        
        if let data = string.data(using: .utf8) {
            if let result = try? JSONDecoder().decode(NYCSchool.self, from: data) {
                return result
            }
            
        }
        
        return NYCSchool(dbn: "0123",
                         school_name: "Bronx School",
                         overview_paragraph: "This is a school in The Bronx.",
                         phone_number: "1-800-BAD-NEWS",
                         school_email: "badnews@bronxschool.com",
                         website: "www.bronxschool.com",
                         primary_address_line_1: "10 East 15th Street",
                         city: "New York",
                         zip: "10003",
                         state_code: "NY")
    }
    
}
