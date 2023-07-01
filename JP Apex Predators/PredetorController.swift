//
//  PredetorController.swift
//  JP Apex Predators
//
//  Created by Feras Jobeir on 1.07.2023.
//

import Foundation

class PredetorController {
    var apexPredetor: [ApexPredator] = []
    
    init() {
        decodeApexPredetorData()
    }
    
    func decodeApexPredetorData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredetor = try decoder.decode([ApexPredator].self, from: data)
            } catch {
                
            }
        }
    }
}
