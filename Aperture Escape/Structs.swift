//
//  Structs.swift
//  Aperture Escape
//
//  Created by Xia He on 2021/7/24.
//

import Foundation
import SwiftUI

struct HeaderImage: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.bottom)
            .padding(.top)
    }
}

// I tried making a custom struct for frequently used navigationLink styles,
// but they simply don't work. I'll break the DRY rule for once now.


