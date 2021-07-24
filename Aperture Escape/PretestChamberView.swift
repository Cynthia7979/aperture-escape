//
//  PretestChamberView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/25.
//

import SwiftUI

struct PretestChamberView: View {
    var body: some View {
        GeometryReader { metric in
            NavigationView {
                ScrollView {
                    VStack {
                        Text("You look around and saw the following things in the Pre-Test Chamber:")
                            .padding()
                        
                        HStack {
                            Group {
                                Image("portalGun")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(25)
                            }
                            .frame(width: metric.size.width*0.5)
                            
                            Group {
                                Image("portalGun")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(25)
                            }
                            .frame(width: 125)
                        }
                    }
                }
            }
        }
    }
}

struct PretestChamberView_Previews: PreviewProvider {
    static var previews: some View {
        PretestChamberView()
    }
}
