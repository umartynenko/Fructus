//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

struct FruitNutriensView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } //: GROUP
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                } //: FOREACH
            } //: DISCLOSUREGROUP
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW
#Preview {
    FruitNutriensView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
}
