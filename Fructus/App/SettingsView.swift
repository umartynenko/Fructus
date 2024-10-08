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
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @AppStorage("selectedLanguage") var selectedLanguage: String = "en"
    
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
                    GroupBox(label: SettingsLabelView(labelText: "Castomization", lableImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                        
                        // MARK: - LANGUAGE SELECTION
                        Divider().padding(.vertical, 4)
                        
                        Text("Select your preferred language using the picker below. The app will automatically switch to the selected language, allowing you to interact with the interface in your desired language.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Picker("Language", selection: $selectedLanguage) {
                            Text("English").tag("en")
                            Text("Russian").tag("ru")
                        }
                    } //: GROUPBOX
                    
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
