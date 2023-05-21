//
//  Hackathon_Clothes_TradingApp.swift
//  Hackathon Clothes Trading
//
//  Created by Justin Cho on 5/20/23.
//

import SwiftUI

@main
struct Hackathon_Clothes_Trading: App {
    @StateObject var userAuthentication = UserAuthentication()

    var body: some Scene {
        WindowGroup {
            if userAuthentication.isAuthenticated {
                HomeView()
                    .environmentObject(userAuthentication)
            } else {
                AuthenticationView()
                    .environmentObject(userAuthentication)
            }
        }
    }
}
