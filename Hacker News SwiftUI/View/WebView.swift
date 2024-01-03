//
//  WebView.swift
//  Hacker News SwiftUI
//
//  Created by Shreyash Pattewar on 03/01/24.
//

import SwiftUI
import WebKit
import SwiftUI


struct WebView : UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
    
    
    
    
}
