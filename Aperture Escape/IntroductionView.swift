//
//  IntroductionView.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/24.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HeaderImage(imageName: "relaxationVault")
                    
                    Text("""
You, namely Test Subject #91946, had just been transported from the Relaxation Center to a newly constructed Test Track.

As you entered the Pre-Test Chamber, a prerecorded robotic voice gave some instructions through the loudspeakers. But then after a loud noise of explosion, everything turned silent.
""")
                        .padding()
                    
                    NavigationLink("Look Around", destination: PretestChamberView())
                        .font(.title2)
                        .padding()
                }
            }
            .navigationBarTitle("The Transportation")
            .navigationBarHidden(true)
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
