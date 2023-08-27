//
//  EquipmentView.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

struct EquipmentView: View {
    var equipment: EquipmentLosses
    var body: some View {
        ZStack {
            LinearGradient(colors: [.clear, .cyan], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                Group {
                    Text("🗓️date \(equipment.date)")
                    Text("☀️day \(equipment.day)")
                    Text("✈️aircraft \(equipment.aircraft ?? 0)")
                    Text("🚁helicopter \(equipment.helicopter ?? 0)")
                    Text("🚍tank \(equipment.tank ?? 0)")
                    Text("🚌APC \(equipment.APC ?? 0)")
                    Text("🛻field artillery \(equipment.fieldArtillery ?? 0)")
                    Text("🚖MRL \(equipment.MRL ?? 0)")
                }
                Group {
                    Text("🚔military auto \(equipment.militaryAuto ?? 0)")
                    Text("⛽︎fuel tank \(equipment.fuelTank ?? 0)")
                    Text("🛞drone \(equipment.drone ?? 0)")
                    Text("🛳️naval ship \(equipment.navalShip ?? 0)")
                    Text("🪨anti-aircraft warfare \(equipment.antiAircraftWarfare ?? 0)")
                    Text("☘special equipment \(equipment.specialEquipment ?? 0)")
                    Text("⛽️vehicles and fuel tanks \(equipment.vehiclesAndFuelTanks ?? 0)")
                    Text("🚀cruise missiles \(equipment.cruiseMissiles ?? 0)")
                    Text("🤘greatest losses direction \(equipment.greatestLossesDirection ?? "")")
                    
                }
            }
            
            .font(.title)
            .foregroundColor(.black)
            
        }
    }
}

