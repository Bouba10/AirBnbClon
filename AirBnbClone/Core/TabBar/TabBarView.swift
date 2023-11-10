//
//  TabBarView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 10.11.23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore" ,systemImage: "magnifyingglass") }
            
            WishListView()
                .tabItem { Label("Wishlists" ,systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile" ,systemImage: "person.circle.fill") }
        }
    }
}

#Preview {
    TabBarView()
}
