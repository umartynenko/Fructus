//
//  SettingsView.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", lableImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image(.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        } //: HSTACK
                    } //: GROUPBOX
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", lableImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Uriy Martynenko")
                        SettingsRowView(name: "Desing", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 18")
                        SettingsRowView(
                            name: "Website",
                            linkLabel: "GitHub Fructus",
                            linkDestination: "https://github.com/umartynenko/Fructus")
                        SettingsRowView(name: "Telegram", content: "@martynenko_uriy")
                        SettingsRowView(name: "SwiftUI", content: "6.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    } //: GROUPBOX
                } //: VSTACK
                .navigationBarTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            } //: SCROLLVIEW
        } //: NAVIGATIONVIEW
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
}
