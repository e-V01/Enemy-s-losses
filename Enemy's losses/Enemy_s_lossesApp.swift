//
//  Enemy_s_lossesApp.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

@main
struct Enemy_s_lossesApp: App {
    @StateObject private var appData = AppData()
    var body: some Scene {
        WindowGroup {
            ContentView()
//            EquipmentListView(equipmentList: appData.equipmentList)
//            PersonnelView(personnelList: appData.personnelList)
        }
    }
}


class AppData: ObservableObject {
    @Published var equipmentList: [EquipmentLosses] = []
    @Published var personnelList: [PersonnelLosses] = []

    init() {
        parseEquipmentData()
        parsePersonnelData()
    }
    func parseEquipmentData () {
        if let equipmentURL = Bundle.main.url(forResource: "russia_losses_equipment", withExtension: "json"),
           let equipmentData = try? Data(contentsOf: equipmentURL) {
            let decoder = JSONDecoder()
            do {
                equipmentList = try decoder.decode([EquipmentLosses].self, from: equipmentData)
            } catch {
                print(error)
            }
        }
    }
    
    func parsePersonnelData() {
        if let personnelURL = Bundle.main.url(forResource: "russia_losses_personnel", withExtension: "json"),
           let personnelData = try? Data(contentsOf: personnelURL) {
            let decoder = JSONDecoder()
            do {
                personnelList = try decoder.decode([PersonnelLosses].self, from: personnelData)
                print(personnelList)
            } catch {
                print(error)
            }
        }
    }
}
