//
//  MainView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL0957 on 01/02/23.
//

import SwiftUI

struct MainView: View {
  
    var body: some View {
      
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AllitemView()
                .tabItem {
                    Label("Shop", systemImage: "cart")
                }
            MybagView()
                .tabItem {
                    Label("bag", systemImage: "bag")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "suit.heart")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }.accentColor(.brown)
        
//        TabView {
//
//            HomeView()
//                    .tabItem {
//                        Image(systemName: "heart.fill")
//                        Text("Favourites")
//                }
//            HomeView()
//                    .tabItem {
//                        Image(systemName: "person.fill")
//                        Text("Friends")
//                }
//            HomeView()
//                    .tabItem {
//                        Image(systemName: "mappin.circle.fill")
//                        Text("Nearby")
//                }
//            HomeView()
//                .tabItem {
//                    Image(systemName: "mappin.circle.fill")
//                    Text("Nearby")
//            }
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "mappin.circle.fill")
//                    Text("Nearby")
//            }
//            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
