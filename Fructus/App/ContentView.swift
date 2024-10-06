//
//  ContentView.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
            NavigationStack {
                List {
                    ForEach(fruits.shuffled()) { fruit in
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                }
                .navigationTitle("Fruits")
                .background(.white)
                .scrollContentBackground(.hidden)
            }
            .background(.white)
            //: NAVIGATION
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
