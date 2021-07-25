//
//  ChamberDoorView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct ChamberDoorView: View {
    @State private var password = ""
    
    let gameState: GameState
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "chamberDoorWide")
                
                Text("The chamber door is locked. There seems to be a panel beside it - maybe you could enter a password?")
                    .padding()
                
                HStack {
                    TextField("Enter Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 250, alignment: .center)
                    
                    if (password == "Cake is a Lie.") || (password == "Cake is a Lie") {  // Password correct. Allow user to navigate to the next view.
                        NavigationLink("Confirm", destination: EmptyTestChamberView(gameState: gameState))
                    } else {
                        Button("Confirm") {}  // Pressing button with incorrect password does nothing
                    }
                    
                }
            }
        }
        .navigationBarTitle("Chamber Door")
        .preferredColorScheme(.light)
    }
}

struct ChamberDoorView_Previews: PreviewProvider {
    static var previews: some View {
        ChamberDoorView(gameState: GameState())
    }
}
