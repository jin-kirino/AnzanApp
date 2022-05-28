//
//  AnswersView.swift
//  AnzanApp
//
//  Created by 神　樹里乃 on 2022/05/24.
//

import SwiftUI

struct AnswersView: View {
    let firstNumber: Int
    let secondNumber: Int
    let result: Int
    var judgment: String = "正解"

    var body: some View {
        ZStack {
            BackgroundView(imageName: "bunbougu_kokuban")
            VStack {
                Text("""
                    \(firstNumber) + \(secondNumber) = \(result)
                    答えは\(result)
                    \(judgment)
                    """)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .multilineTextAlignment(TextAlignment.center)
            }// VStack
        }// ZStack
    }// body
}// AnswerView

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView(firstNumber: 0, secondNumber: 0, result: 0)
    }
}
