//
//  BigImageButton.swift
//  Enemy's losses
//
//  Created by Y K on 27.08.2023.
//

import SwiftUI

struct BigImageButton: View {
    let systemName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: systemName)
                .font(.system(size: 100))
                .padding()
            Text(text)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
        .background(Color.mint)
        .foregroundColor(.white)
        .cornerRadius(10)
        .padding()
    }
}


