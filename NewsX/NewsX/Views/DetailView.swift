//
//  DetailView.swift
//  NewsX
//
//  Created by Kritarth Vyas on 3/10/22.
//  Credits: London App Brewery iOS Bootcamp
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
