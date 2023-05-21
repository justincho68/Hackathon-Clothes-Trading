//
//  HomeView.swift
//  Hackathon Clothes Trading
//
//  Created by Justin Cho on 5/20/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = "Post"

    var body: some View {
        TabView(selection: $selectedTab) {
            PostView()
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag("Post")

            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag("Explore")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct PostView: View {
    var body: some View {
        Text("Post View")
    }
}

struct ExploreView: View {
    var body: some View {
        Text("Explore View")
    }
}





