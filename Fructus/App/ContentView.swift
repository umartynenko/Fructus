//
//  ContentView.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
            NavigationStack {
                List {
                    ForEach(fruits.shuffled()) { fruit in
                        NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                            FruitRowView(fruit: fruit)
                                .padding(.vertical, 4)
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                }
                .navigationTitle("Fruits")
                .background(.white)
                .scrollContentBackground(.hidden)
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }))
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
            .background(.white)
            //: NAVIGATION
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
