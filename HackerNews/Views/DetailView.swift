//
//  DetailView.swift
//  HackerNews
//
//  Created by Shahid Aaqeel on 12/14/21.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}


