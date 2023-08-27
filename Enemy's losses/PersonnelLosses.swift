//
//  PersonnelLosses.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

struct PersonnelLosses: Identifiable, Decodable {
//    var id = UUID()
    var date: String
    var day: Int
    var personnel: Int?
    var personnelDescription: String?
    var pow: Int?
    
    var id: Int {
            return day
        }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        date = try container.decode(String.self, forKey: .date)
        day = try container.decode(Int.self, forKey: .day)
        personnel = try? container.decode(Int.self, forKey: .personnel)
        personnelDescription = try? container.decode(String.self, forKey: .personnelDescription)
        pow = try? container.decode(Int.self, forKey: .pow)
    }
    
    enum CodingKeys: String, CodingKey {
//        case id
        case date = "date"
        case day = "day"
        case personnel = "personnel"
        case personnelDescription = "personnel*"
        case pow = "POW"
    }
}
    





