//
//  DenyOfferView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct DenyOfferView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "rocketSentry")
                
                Text("“Well, then I don’t have time for you either.” \n\nGLaDOS fires a missile from the Rocket Sentry!")
                    .padding()
                
                NavigationLink("Duck Down!", destination: DuckDownView(gameState: gameState))
                    .font(.title2)
                    .padding()
                
                NavigationLink("Fire Portals!", destination: FirePortalsView(gameState: gameState))
                    .font(.title2)
                    .padding()
            }
        }
        .preferredColorScheme(.light)
    }
}

struct DenyOfferView_Previews: PreviewProvider {
    static var previews: some View {
        DenyOfferView(gameState: GameState())
    }
}
