//
//  WebView.swift
//  Hackor News
//
//  Created by Aavhan Chatse on 20/10/24.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    // 1
    let urlString: String?

    // 2
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    // 3
    func updateUIView(_ webView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
    }
}
