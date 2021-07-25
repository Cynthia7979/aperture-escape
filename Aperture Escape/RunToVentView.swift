//
//  RunToVentView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/26.
//

import SwiftUI

struct RunToVentView: View {
    let gameState: GameState
    var body: some View {
        GeometryReader { metric in
            ScrollView {
                VStack {
                    HeaderImage(imageName: "vent")
                    
                    Text("You found a metal vent door at one corner.")
                        .padding()
                        .frame(width: metric.size.width, alignment: .leading)
                    
                    ImageButton(imageName: "crowbar", label: "", width: metric.size.width*0.8)
                    
                    Text("With a crowbar out of nowhere, you broke it open and crawled inside. Fortunately, the neurotoxin floated high above the floor, so you are safe from being suffocated here.")
                    .padding()
                    
                    NavigationLink("Move Forward", destination: CentralAIChamberView(gameState: gameState))
                        .font(.title2)
                }
            }
        }
        .navigationBarTitle("Through the Vent")
        .preferredColorScheme(.light)
    }
}

struct RunToVentView_Previews: PreviewProvider {
    static var previews: some View {
        RunToVentView(gameState: GameState())
    }
}
