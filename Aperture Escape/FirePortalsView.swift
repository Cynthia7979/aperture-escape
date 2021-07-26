//
//  FirePortalsView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct FirePortalsView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "gladosDead")
                
                Text("With unbelievably fast speed, you shot two portals at the missile’s point of impact and above GLaDOS, respectively. Before GLaDOS can ever react, the missile exploded above her. She gave a deafening scream and you can see her components falling apart.")
                    .padding()
                
                HeaderImage(imageName: "HECU")
                
                Text("Soon, an armed task force came investigating. Though pointing a submachine at you, the task force is astonished by your success on murdering GLaDOS. One of them invites you to join their institution, which they called “Black Mesa.” Following this, a new page of your life begun…")
                    .padding()
                
                if (gameState.playerName == "Gordon Freeman") ||
                    (gameState.playerName == "Gordon") ||
                    (gameState.playerName == "Freeman") {
                        EndingNote(label1: "True Ending 1: Level 3 Research Associate Scientist", label2: "")
                            .foregroundColor(.blue)
                } else {
                    if (gameState.playerName == "G-Man") ||
                        (gameState.playerName == "G-man") ||
                        (gameState.playerName == "g-man") ||
                        (gameState.playerName == "Gman") ||
                        (gameState.playerName == "G") {
                            EndingNote(label1: "True Ending 2: Not A Wise Choice (For Black Mesa)", label2: "")
                                .foregroundColor(.blue)
                    } else {
                        EndingNote(label1: "Good Ending: You Are A Researcher Now", label2: "Try to find the True Ending... if you hadn't already done so.")
                    }
                }
            }
        }
        .preferredColorScheme(.light)
    }
}

struct FirePortalsView_Previews: PreviewProvider {
    static var previews: some View {
        FirePortalsView(gameState: GameState())
    }
}
