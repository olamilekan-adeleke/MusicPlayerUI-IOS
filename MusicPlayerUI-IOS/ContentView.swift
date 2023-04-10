//
//  ContentView.swift
//  MusicPlayerUI-IOS
//
//  Created by Enigma Kod on 10/04/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer

    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                List(musicPlayer.songs) { song in
                    SongView(song: song)
                        .listRowSeparator(.hidden)
                        .padding(.vertical, 0)
                }
                .listStyle(.plain)
                .navigationTitle("Music Player")
            }
            MiniPlayerView()
                .background(.gray)
                .padding(.vertical, 5)
                .frame(width: UIScreen.main.bounds.width - 25)
                .cornerRadius(10)
                .offset(y: 2)
//                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MusicPlayer())
    }
}
