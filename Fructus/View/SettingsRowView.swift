//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                Spacer()
                if content != nil {
                    Text(content!)
                        .fontWeight(.bold)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "http://\(linkDestination!)")!)
                        .fontWeight(.bold)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                        .fontWeight(.bold)
                } else {
                    EmptyView()
                }
            } //: HSTACK
        } //: VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "Uriy Martynenko")
            .padding()
        SettingsRowView(name: "Website", linkLabel: "GitHub", linkDestination: "github.com/uriy-martynenko")
            .padding()
    }
}
