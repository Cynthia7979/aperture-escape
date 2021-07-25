//
//  ItemBottleOfLiquidView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct ItemBottleOfLiquidView: View {
    let gameState: GameState
    var body: some View {
        GeometryReader { metric in
            ScrollView {
                VStack {
                    HStack {
                        ImageButton(imageName: "nightvisionPotion", label: "", width: metric.size.width*0.2)
                    }
                    .frame(width: metric.size.width)
                    
                    
                    
                    Text("It’s a bottle of glowing blue liquid. It looks eerie and dirty, but you drank it anyway. Immediately, your vision becomes clearer and you can see through the dark now. It is a Nightvision Potion! ")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                    
                    Spacer()
                }
            }
        }
        .navigationBarTitle("Bottle of Liquid")
    }
}

struct ItemBottleOfLiquidView_Previews: PreviewProvider {
    static var previews: some View {
        ItemBottleOfLiquidView(gameState: GameState())
    }
}
