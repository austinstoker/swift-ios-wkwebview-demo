//
//  ViewController.swift
//  wkwebview
//
//  Created by Afrar Malakooth on 6/5/20.
//  Modified for a test by Austin Stoker Dec 2024 to show that the
//  Vimeo iFrame player does not work inside a WKWebview on iOS 17.5

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let htmlString =
        """
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <title>Load file or HTML string example</title>
        </head>
        <body>

        <h1>Local demo page</h1>
        <p>
          This is an example page to show that embedded vimeo viewers don't work in wkwebview on iOS 17.5
        </p>

        <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/580985149?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Example"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

        
        <iframe width="560" height="315" src="https://www.youtube.com/embed/JojgVRaJ91A?si=YGu_Dv1uAZt0t_5_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        
        </body>
        </html>
        """;
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
}

