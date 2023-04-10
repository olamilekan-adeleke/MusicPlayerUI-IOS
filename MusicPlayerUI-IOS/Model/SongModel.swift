//
//  SongModel.swift
//  MusicPlayerUI-IOS
//
//  Created by Enigma Kod on 10/04/2023.
//

import Foundation

struct Song: Identifiable, Equatable{
    let id = UUID()
    let artist: String
    let name: String
    let cover: String
}
