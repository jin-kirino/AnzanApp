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
                        .padding(.leading, 50.0)
                        .padding(.bottom, 20.0)
                    TextField("答えは？", text: $inputAnswer)
                        .keyboardType(.numberPad)
                }

                Button {
                    print("タップ")
                    firstNumber = Int.random(in: 1...9)
                    secondNumber = Int.random(in: 1...9)
                    result = firstNumber + secondNumber
                } label: {
                    Text("答える")
                        .font(Font.largeTitle)
                }// Button
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
