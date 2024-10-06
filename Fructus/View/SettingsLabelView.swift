//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var lableImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        } //: HSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsLabelView(labelText: "Fructus", lableImage: "info.circle")
        .padding()
}
