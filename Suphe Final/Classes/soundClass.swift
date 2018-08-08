//
//  soundClass.swift
//  Şüphe
//
//  Created by Ufuk Celen on 23.06.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

var player: AVAudioPlayer?


func playSuccess() {
    guard let url = Bundle.main.url(forResource: "success", withExtension: "wav") else { return }
    do {
     //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playError() {
    guard let url = Bundle.main.url(forResource: "error", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playHaunt() {
    guard let url = Bundle.main.url(forResource: "haunt", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func stopHaunt() {
    guard let url = Bundle.main.url(forResource: "haunt", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.stop()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playL17() {
    guard let url = Bundle.main.url(forResource: "L17", withExtension: "mp3") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playRuzgar() {
    guard let url = Bundle.main.url(forResource: "ruzgar", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}



func deneme() {
    guard let url = Bundle.main.url(forResource: "success", withExtension: "wav") else { return }
    do {
        //   try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.stop()
    } catch let error {
        print(error.localizedDescription)
    }
}
