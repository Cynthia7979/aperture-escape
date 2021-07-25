//
//  EmptyTestChamberView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct EmptyTestChamberView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "emptyChamber")
                
                Text("You opened the door. Before you is a large, empty room. That’s strange, it’s supposed to be the Test Chamber! \n\nAs you were wondering, a sudden hissing noise appeared as some apparently toxic gas entered the chamber. You must run, quickly!")
                    .padding()
                
                NavigationLink("To the Chamber Door!", destination: RunToChamberDoorView(gameState: gameState))
                    .font(.title2)
                    .padding()
                
                NavigationLink("To the Vent!", destination: RunToVentView(gameState: gameState))
                    .font(.title2)
                    .padding()
            }
        }
        .navigationBarTitle("Empty Test Chamber")
        .preferredColorScheme(.light)
    }
}

struct EmptyTestChamberView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyTestChamberView(gameState: GameState())
    }
}
