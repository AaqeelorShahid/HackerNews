//
//  ContentView.swift
//  HackerNews
//
//  Created by Shahid Aaqeel on 12/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                            .foregroundColor(.green)
                            .padding(.horizontal)
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
