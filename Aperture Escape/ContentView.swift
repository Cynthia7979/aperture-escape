//
//  ContentView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/24.
//
//  Note: Due to problems with protocols and types about View, I can't achieve DRY code on those associated with NavigationLink.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var gameState = GameState()
    var body: some View {
        NavigationView {
            VStack {
                Image("testChamber")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .padding(.top)
                
                NavigationLink("Go!", destination: IntroductionView(gameState: gameState))
                    .font(.title)
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle("Aperture Escape")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
