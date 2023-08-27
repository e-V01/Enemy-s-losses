//
//  SearchBar.swift
//  Enemy's losses
//
//  Created by Y K on 27.08.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .padding(.horizontal, 8)
            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .opacity(text.isEmpty ? 0 : 1)
            }
        }
        .padding(.top, 8)
        .padding(.horizontal, 8)
    }
}

