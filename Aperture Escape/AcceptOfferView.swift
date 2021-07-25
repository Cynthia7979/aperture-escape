//
//  AcceptOfferView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct AcceptOfferView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "youWillBeBakedAndThenThereWillBeCake")
                
                Text("You were teleported back onto an Aperture Science Unstationary Scaffold Transporter. Time to test for the cake! Or … to be baked?")
                    .padding()
                
                EndingNote(label1: "Bad Ending: You Will be Baked, and Then There Will Be Cake")
            }
        }
        .navigationBarTitle("Back to Testing")
        .preferredColorScheme(.dark)
    }
}

struct AcceptOfferView_Previews: PreviewProvider {
    static var previews: some View {
        AcceptOfferView(gameState: GameState())
    }
}
