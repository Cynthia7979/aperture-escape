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
                        
                }
            }
        }
    }
}

struct ItemBottleOfLiquidView_Previews: PreviewProvider {
    static var previews: some View {
        ItemBottleOfLiquidView(gameState: GameState())
    }
}
