//
//  ContentView.swift
//  Hacker News SwiftUI
//
//  Created by Shreyash Pattewar on 03/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            
            List (networkManager.posts){
                post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack {
                        Text(String(post.points ?? 0))
                        Text(post.title ?? "")
                    }
                }
                
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}


