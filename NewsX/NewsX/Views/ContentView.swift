//
//  ContentView.swift
//  NewsX
//
//  Created by Kritarth Vyas on 3/10/22.
//  Credits: London App Brewery iOS Bootcamp
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                        Text(post.title)
                        
                }
                .padding(10)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarTitle("NewsX")
            
        }
        
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
