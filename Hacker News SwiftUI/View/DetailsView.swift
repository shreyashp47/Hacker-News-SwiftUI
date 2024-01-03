//
//  DetailsView.swift
//  Hacker News SwiftUI
//
//  Created by Shreyash Pattewar on 03/01/24.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailsView(url: "https://www.google.com")
}

