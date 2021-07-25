//
//  PretestChamberView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct PretestChamberView: View {
    let gameState: GameState
    var body: some View {
        GeometryReader { metric in
            ScrollView {
                VStack {
                    Text("\nYou looked around and spotted the following things in the Pre-Test Chamber:\n")
                    
                    HStack {
                        NavigationLink(destination: ItemPortalGunView(gameState: gameState)) {
                            ImageButton(imageName: "portalGun", label: "Portal Gun", width: (metric.size.width*0.48))
                                .padding(.trailing)
                        }
                        
                        NavigationLink(destination: ItemBottleOfLiquidView(gameState: gameState)) {
                            ImageButton(imageName: "nightvisionPotion", label: "Bottle of Liquid", width: (metric.size.width*0.33))
                                .padding(.trailing)
                        }
                    }
                    .padding(.top)
                    
                    HStack {
                        NavigationLink(destination: ChamberDoorView(gameState: gameState)) {
                            ImageButton(imageName: "chamberDoor", label: "Chamber Door", width: (metric.size.width*0.45))
                        }
                        
                        NavigationLink(destination: BrokenWallPanelView(gameState: gameState)) {
                            ImageButton(imageName: "brokenPanels", label: "Broken Wall Panels", width: (metric.size.width*0.45))
                        }
                    }
                    .padding(.bottom)
                }
                .padding()
            }
        }
        .preferredColorScheme(.light)
        .navigationBarTitle("Pre-Test Chamber")
    }
}

struct PretestChamberView_Previews: PreviewProvider {
    static var previews: some View {
        PretestChamberView(gameState: GameState())
    }
}
