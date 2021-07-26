//
//  ItemBottleOfLiquidView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct ItemBottleOfLiquidView: View {
    @State private var drankState: Bool? = false
    
    let gameState: GameState
    
    var body: some View {
        GeometryReader { metric in
            ScrollView {
                VStack {
                    if !gameState.nightVisionEnabled {
                        CentralImage(imageName: "nightvisionPotion", fullWidth: metric.size.width)
                        
                        Text("It’s a bottle of glowing blue liquid.")
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                        
                        NavigationLink("Drink It",
                                       destination: VStack {
                                            Text("It looks eerie and dirty, but you drank it anyway. Immediately, your vision becomes clearer and you can see through the dark now. It is a Nightvision Potion! ")
                                                .padding()
                                            Spacer()
                                       },
                                       tag: true,
                                       selection: $drankState
                        ).font(.title2)
                        .padding()
                        .onChange(of: drankState, perform: { value in
                            gameState.nightVisionEnabled = true
                        })
                    } else {
                        CentralImage(imageName: "emptyBottle", fullWidth: metric.size.width)
                        
                        Text("You've already drank the Nightvision potion.")
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                    }
                    
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

struct CentralImage: View {
    let imageName: String
    let fullWidth: CGFloat
    var body: some View {
        HStack {
            ImageButton(imageName: imageName, label: "", width: fullWidth*0.2)
        }.frame(width: fullWidth)  // Align in center
    }
}
