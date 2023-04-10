//
//  SOngView.swift
//  MusicPlayerUI-IOS
//
//  Created by Enigma Kod on 10/04/2023.
//

import SwiftUI

struct SongView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    let song: Song

    var body: some View {
        ZStack {
            HStack {
                NavigationLink(destination: PlayerView(song: song)) {
                    EmptyView()
                }
                .opacity(0.0)
                .buttonStyle(PlainButtonStyle())
            }
            HStack {
                Image(song.cover)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(5)

                Spacer().frame(width: 10)
                VStack(alignment: .leading) {
                    Text(song.name)
                    Text(song.artist).italic()
                }

                Spacer()
                PlayButton(song: song)
            }
        }
        .padding(.all, 0)
    }
}

struct PlayerView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    let song: Song

    var body: some View {
        VStack {
            Image(song.cover)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)

            HStack {
                Text(song.name)
                Text(song.artist).italic()
            }
            PlayButton(song: song)
        }
    }
}

struct MiniPlayerView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer

    var body: some View {
        if let currentSong = musicPlayer.currentSong {
            HStack {
                Image(currentSong.cover)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .cornerRadius(5)

                Spacer().frame(width: 10)
                VStack(alignment: .leading) {
                    Text(currentSong.name).font(.system(size: 16))
                    Text(currentSong.artist).italic()
                        .font(.system(size: 13))
                        .opacity(0.7)
                }
               

                Spacer()
                PlayButton(song: currentSong)
            }
            .foregroundColor(.white)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } else {
            EmptyView()
        }
    }
}
