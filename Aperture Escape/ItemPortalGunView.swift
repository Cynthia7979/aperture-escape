//
//  ItemPortalGunView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct ItemPortalGunView: View {
    let gameState: GameState
    var body: some View {
        ScrollView {
            VStack {
                HeaderImage(imageName: "portalGunWide")
                
                Text("The Aperture Science Handheld Portal Device™ is in your hand. You should be able to create portals with it, but you can really get nowhere with them in this closed chamber.")
                    .padding()
            }
        }
        .navigationBarTitle("Portal Gun")
    }
}

struct ItemPortalGunView_Previews: PreviewProvider {
    static var previews: some View {
        ItemPortalGunView(gameState: GameState())
    }
}
