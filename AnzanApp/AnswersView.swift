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
    var inputAnswer: Int

    private let soundPlayer = SoundPlayer()
    @State private var resultNumber: Int = 0
    @State private var resultJudg: String = ""

    var body: some View {
        ZStack {
            BackgroundView(imageName: "bunbougu_kokuban")
            VStack {
                Text("""
                    \(firstNumber) + \(secondNumber) = \(inputAnswer)
                    答えは\(resultNumber)
                    \(resultJudg)
                    """)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .multilineTextAlignment(TextAlignment.center)
            }// VStack
        }// ZStack
        .onAppear(perform: {
            resultNumber = firstNumber + secondNumber
            if inputAnswer == resultNumber {
                soundPlayer.correctPlay()
                resultJudg = "正解"
            } else {
                soundPlayer.incorrectPlay()
                resultJudg = "不正解"
            }
        })// .onAppear
    }// body
}// AnswerView

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView(firstNumber: 0, secondNumber: 0, inputAnswer: 0)
    }
}
