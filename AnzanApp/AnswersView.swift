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
    let soundPlayer = SoundPlayer()

    func judgment(judg: Int) -> String {
        if firstNumber + secondNumber == inputAnswer {
            return "正解"
        } else {
            return "不正解"
        }
    }

    var body: some View {
        ZStack {
            BackgroundView(imageName: "bunbougu_kokuban")
            VStack {
                Text("""
                    \(firstNumber) + \(secondNumber) = \(inputAnswer)
                    答えは\(firstNumber + secondNumber)
                    \(judgment(judg: firstNumber + secondNumber))
                    """)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .multilineTextAlignment(TextAlignment.center)
            }// VStack
        }// ZStack
        .onAppear(perform: {
            if inputAnswer == firstNumber + secondNumber {
                soundPlayer.correctPlay()
            } else {
                soundPlayer.incorrectPlay()
            }
        })// .onAppear
    }// body
}// AnswerView

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView(firstNumber: 0, secondNumber: 0, inputAnswer: 0)
    }
}
