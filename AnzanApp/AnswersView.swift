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
    var result: Int
//    var judgment: String
    let soundPlayer = SoundPlayer()

    func judgment(judg: Int) -> String {
        if result == inputAnswer {
            return "正解"
        } else {
            return "不正解"
        }
    }

    var body: some View {

//        if judgment(judg: result) == "正解" {
//            soundPlayer.correctPlay()
//        } else {
//            soundPlayer.incorrectPlay()
//        }

        ZStack {
            BackgroundView(imageName: "bunbougu_kokuban")
            VStack {
                Text("""
                    \(firstNumber) + \(secondNumber) = \(inputAnswer)
                    答えは\(result)
                    \(judgment(judg: result))
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
        AnswersView(firstNumber: 0, secondNumber: 0, inputAnswer: 0, result: 0)
    }
}
