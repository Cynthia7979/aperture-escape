//
//  DuckDownView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct DuckDownView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "explosion")
                
                Text("It didn't help! The impact of explosion threw you into midair. You landed hard, head first, and felt excruciating pain. You heard the sound of additional missiles being fired before falling into unconsciousness.")
                    .padding()
                
                EndingNote(label1: "Bad Ending: Torn Into Pieces")
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct DuckDownView_Previews: PreviewProvider {
    static var previews: some View {
        DuckDownView(gameState: GameState())
    }
}
