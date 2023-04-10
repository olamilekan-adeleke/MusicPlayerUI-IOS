//
//  MusicPlayerUI_IOSApp.swift
//  MusicPlayerUI-IOS
//
//  Created by Enigma Kod on 10/04/2023.
//

import SwiftUI

@main
struct MusicPlayerUI_IOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(MusicPlayer())
        }
    }
}
