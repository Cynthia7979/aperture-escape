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

struct ImageButton: View {
    let imageName: String
    let label: String
    let width: CGFloat
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(25)
            
            Text(label)
        }
        .frame(width: width)
    }
}
