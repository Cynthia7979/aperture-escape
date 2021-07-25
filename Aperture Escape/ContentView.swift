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
    @State private var nameField = ""
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                Image("testChamber")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .padding(.top)
                
                TextField("Insert Your Name Here", text: $nameField)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .frame(height: 35)
                    .padding()
                
                NavigationLink(
                    "Go!",
                    destination: IntroductionView(gameState: gameState),
                    tag: 1,
                    selection: $selection
                )
                .font(.title)
                .disabled(nameField == "")
                .onChange(of: selection, perform: { value in
                    gameState.playerName = nameField
                })
                .padding()
            }
            .navigationBarTitle("Aperture Escape")
            .preferredColorScheme(.light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
