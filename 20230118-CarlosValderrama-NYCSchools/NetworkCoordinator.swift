//
//  NetworkCoordinator.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import Foundation

protocol NetworkCoordinatorConforming {
    func downloadSchools() async throws -> [NYCSchool]
    func downloadSATs(dbn: String) async throws -> [NYCSAT]
}

class NetworkCoordinator: NetworkCoordinatorConforming {
    
    let decoder = JSONDecoder()
    

    //https://data.cityofnewyork.us/resource/f9bf-2cp4.json?dbn=21K728
    
    func downloadSchools() async throws -> [NYCSchool] {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try decoder.decode([NYCSchool].self, from: data)
    }
    
    func downloadSATs(dbn: String) async throws -> [NYCSAT] {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json?dbn=\(dbn)") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try decoder.decode([NYCSAT].self, from: data)
    }
}
