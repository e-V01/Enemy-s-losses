//
//  PersonnelListView.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

struct PersonnelListView: View {
    var personnelList: [PersonnelLosses]
    var body: some View {
                List(personnelList) { personnel in
                    NavigationLink(destination: PersonnelView(personnel: personnel)) {
                        VStack(alignment: .leading) {
                        Text("📆Date: \(personnel.date)")
                        Text("☀️Day: \(personnel.day)")
                        Text("💁‍♂️Personnel: \(personnel.personnel ?? 0)")
                        Text("👤Personnel Description: \(personnel.personnelDescription ?? " ")")
                        Text("🧟‍♂️POW: \(personnel.pow ?? 0)")
                }
                        .font(.title2)
            }
        }
    }
}



