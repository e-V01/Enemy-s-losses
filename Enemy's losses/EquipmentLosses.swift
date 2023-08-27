//
//  EquipmentLosses.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

struct EquipmentLosses: Identifiable, Decodable {
//    var id = UUID()
    var date: String
    var day: Int
    var aircraft: Int?
    var helicopter: Int?
    var tank: Int?
    var APC: Int?
    var fieldArtillery: Int?
    var MRL: Int?
    var militaryAuto: Int?
    var fuelTank: Int?
    var drone: Int?
    var navalShip: Int?
    var antiAircraftWarfare: Int?
    var specialEquipment: Int?
    var vehiclesAndFuelTanks: Int?
    var cruiseMissiles: Int?
    var greatestLossesDirection: String?
    
    var id: Int {
            return day
        }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        date = try container.decode(String.self, forKey: .date)
        day = try container.decode(Int.self, forKey: .day)
        aircraft = try? container.decode(Int.self, forKey: .aircraft)
        helicopter = try? container.decode(Int.self, forKey: .helicopter)
        tank = try? container.decode(Int.self, forKey: .tank)
        APC = try? container.decode(Int.self, forKey: .APC)
        fieldArtillery = try? container.decode(Int.self, forKey: .fieldArtillery)
        MRL = try? container.decode(Int.self, forKey: .MRL)
        militaryAuto = try? container.decode(Int.self, forKey: .militaryAuto)
        fuelTank = try? container.decode(Int.self, forKey: .fuelTank)
        drone = try? container.decode(Int.self, forKey: .drone)
        navalShip = try? container.decode(Int.self, forKey: .navalShip)
        antiAircraftWarfare = try? container.decode(Int.self, forKey: .antiAircraftWarfare)
        specialEquipment = try? container.decode(Int.self, forKey: .specialEquipment)
        vehiclesAndFuelTanks = try? container.decode(Int.self, forKey: .vehiclesAndFuelTanks)
        cruiseMissiles = try? container.decode(Int.self, forKey: .cruiseMissiles)
        greatestLossesDirection = try? container.decode(String.self, forKey: .greatestLossesDirection)
    }
    
    enum CodingKeys: String, CodingKey {
//        case id
        case date = "date"
        case day = "day"
        case aircraft = "aircraft"
        case helicopter = "helicopter"
        case tank = "tank"
        case APC = "APC"
        case fieldArtillery = "field artillery"
        case MRL = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone = "drone"
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"
        case greatestLossesDirection = "greatest losses direction"
    }
}




