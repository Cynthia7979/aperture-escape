//
//  BrokenWallPanelView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct BrokenWallPanelView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "brokenPanelsWide")
                
                Text(
                    "A part of the wall seems to be only loosely connected to its base.\n\n" +
                        (gameState.nightVisionEnabled ? "Thanks to the Nightvision Potion, you noticed that a whiteboard is stuck between the mechanical parts. You reached for it, and it came off pretty easily. The whiteboard was almost entirely covered with handwritten physics formulas, but on top of them wrote in large and dark letters:" : "There might be something behind it, but you can’t see it.")
                )
                .padding()
                
                if gameState.nightVisionEnabled {
                    Text("Cake is a Lie.")
                        .font(.title)
                        .bold()
                        .padding()
                }
                
                Spacer()
            }
        }
        .navigationBarTitle("Broken Wall Panels")
        .preferredColorScheme(.light)
    }
}

struct BrokenWallPanelView_Previews: PreviewProvider {
    static var previews: some View {
        BrokenWallPanelView(gameState: GameState())
    }
}
