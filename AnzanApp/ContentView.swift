//
//  ContentView.swift
//  AnzanApp
//
//  Created by 神　樹里乃 on 2022/05/23.
//

import SwiftUI

struct ContentView: View {
    // 答えを入力
    @State private var inputAnswer: String = ""
    // 1つ目の数字
    @State private var firstNumber: Int = Int.random(in: 1...9)
    // 2つ目の数字
    @State private var secondNumber: Int = Int.random(in: 1...9)
    // 計算結果
    @State private var result: Int = 0
    // 答え合わせのシート
    @State private var answersView: Bool = false
    // アラートの管理
    @State private var showAlert: Bool = false

    var body: some View {
        ZStack {
            BackgroundView(imageName: "bunbougu_kokuban")
            VStack {
                HStack {
                    Text("\(firstNumber) + \(secondNumber) =")
                        .font(Font.largeTitle)
                    TextField("答えは？", text: $inputAnswer)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .onChange(of: inputAnswer) { newInput in
                             print("newInput = [\(newInput)")
                        }
                }
                .frame(width: 220, height: 30)
                .padding()
                .background(Color.white.opacity(0.7))

                Button {
                    print("タップ")
                    result = firstNumber + secondNumber
                    answersView.toggle()
                } label: {
                    Text("答える")
                        .font(Font.largeTitle)
                }// Button
                .frame(width: 120, height: 70)
                .background(Color.white.opacity(0.7))
                .sheet(isPresented: $answersView, onDismiss: {
                    firstNumber = Int.random(in: 1...9)
                    secondNumber = Int.random(in: 1...9)
                }) {
                    AnswersView(firstNumber: firstNumber, secondNumber: secondNumber, inputAnswer: Int(inputAnswer)!, result: result)
                }
            }// VStack
        }// ZStack

            .padding()
    }// body
}// ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
