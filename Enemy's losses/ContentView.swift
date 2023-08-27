//
//  ContentView.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var appData = AppData()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: EquipmentListView(equipmentList: appData.equipmentList)) {
                    BigImageButton(systemName: "exclamationmark.triangle", text: "Equipment Losses")
                        .font(.largeTitle)
                }
                .padding()
                
                NavigationLink(destination: PersonnelListView(personnelList: appData.personnelList)) {
                    BigImageButton(systemName: "person.2.slash", text: "Personnel losses")
                        .font(.largeTitle)
                }
                .padding()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
