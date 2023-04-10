//
//  PlayButton.swift
//  MusicPlayerUI-IOS
//
//  Created by Enigma Kod on 10/04/2023.
//

import SwiftUI

struct PlayButton: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    let song: Song

    private var buttonText: String {
        if song == musicPlayer.currentSong {
            return "stop"
        } else {
            return "play"
        }
    }

    var body: some View {
        Button {
            musicPlayer.pressButton(song: song)
        } label: {
            Image(systemName: buttonText)
                .font(.system(size: 20))
//                .foregroundColor(.black)
        }
    }
}
