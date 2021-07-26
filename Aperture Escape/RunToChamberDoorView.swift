//
//  RunToChamberDoorView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct RunToChamberDoorView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "chamberDoorWide")
                
                Text("You went back to where you came from. Along with you came neurotoxin. Both of you have nowhere to go in this closed space, and the gas quickly terminated your brain's activity.")
                    .padding()
                
                EndingNote(label1: "Bad Ending: Not Immune to Neurotoxin")
                    .padding()
            }
        }
        .navigationBarTitle("Back to the Door")
    }
    
    struct RunToChamberDoorView_Preview: PreviewProvider {
        static var previews: some View {
            RunToChamberDoorView(gameState: GameState())
        }
    }
}
