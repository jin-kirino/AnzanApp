//
//  BackgroundView.swift
//  AnzanApp
//
//  Created by 神　樹里乃 on 2022/05/24.
//

import SwiftUI

struct BackgroundView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }// body
}// BackgroundView

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "bunbougu_kokuban")
    }
}
