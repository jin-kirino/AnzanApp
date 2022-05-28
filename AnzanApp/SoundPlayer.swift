//
//  SoundPlayer.swift
//  AnzanApp
//
//  Created by 神　樹里乃 on 2022/05/29.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let correctData = NSDataAsset(name: "correct")!.data
    var correctPlayer: AVAudioPlayer!
    let incorrectData = NSDataAsset(name: "incorrect")!.data
    var incorrectPlayer: AVAudioPlayer!

    func correctPlay() {
        do {
            correctPlayer = try AVAudioPlayer(data: correctData)
            correctPlayer.play()
        } catch {
            print("正解でエラー発生")
        }
    }

    func incorrectPlay() {
        do {
            incorrectPlayer = try AVAudioPlayer(data: incorrectData)
            incorrectPlayer.play()
        } catch {
            print("不正解でエラー発生")
        }
    }
}
