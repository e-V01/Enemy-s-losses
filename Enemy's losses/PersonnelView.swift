//
//  PersonnelView.swift
//  Enemy's losses
//
//  Created by Y K on 24.08.2023.
//

import SwiftUI

struct PersonnelView: View {
    var personnel: PersonnelLosses
    var body: some View {
        ZStack {
            LinearGradient(colors: [.clear, .mint], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                Text("📆Date: \(personnel.date)")
                Text("☀️Day: \(personnel.day)")
                Text("💁‍♂️Personnel: \(personnel.personnel ?? 0)")
                Text("👤Personnel Description: \(personnel.personnelDescription ?? " ")")
                Text("🧟‍♂️POW: \(personnel.pow ?? 0)")
            }
            .font(.largeTitle)
        }
    }
}


