//
//  AnswersView.swift
//  AnzanApp
//
//  Created by 神　樹里乃 on 2022/05/24.
//

import SwiftUI

struct AnswersView: View {
    var body: some View {
        ZStack {
            BackgroundView(imageName: "bunbougu_kokuban")
            Text("正解")
        }// ZStack
    }// body
}// AnswerView

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
