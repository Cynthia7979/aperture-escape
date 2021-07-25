//
//  CentralAIChamberView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct CentralAIChamberView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                Text("After a few minutes of crawling, you finally reached the other end of the vent. After breaking open the vent door with your handy crowbar, you crawled into a bright room with a huge robotic being in the center.")
                    .padding()
                
                HeaderImage(imageName: "GLaDOS")
                
                Text("It is GLaDOS, the legendary (and cruel) Personality Construct! It seems that she had just killed off all personnels in the facility with neurotoxin. \n\nShe saw you and offered you some cake if you agree to return to the Test Track.")
                    .padding()
                
                NavigationLink("Accept Offer", destination: AcceptOfferView(gameState: gameState))
                    .font(.title2)
                    .padding()
                
                NavigationLink("Deny Offer", destination: DenyOfferView(gameState: gameState))
                    .font(.title2)
                    .padding()
            }
        }
        .navigationBarTitle("Central AI Chamber")
        .preferredColorScheme(.light)
    }
}

struct CentralAIChamberView_Previews: PreviewProvider {
    static var previews: some View {
        CentralAIChamberView(gameState: GameState())
    }
}
