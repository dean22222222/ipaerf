import SwiftUI
import WebKit
import AVFoundation

@main
struct SoundBoardApp: App {
    init() {
        // Lets sounds play even when the iPhone silent switch is on
        try? AVAudioSession.sharedInstance().setCategory(.playback)
        try? AVAudioSession.sharedInstance().setActive(true)
    }
    var body: some Scene {
        WindowGroup {
            BoardView()
                .ignoresSafeArea()
                .background(Color(red: 0.07, green: 0.06, blue: 0.12))
        }
    }
}

struct BoardView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        let web = WKWebView(frame: .zero, configuration: config)
        web.isOpaque = false
        web.backgroundColor = UIColor(red: 0.07, green: 0.06, blue: 0.12, alpha: 1)
        web.scrollView.bounces = false
        if let url = Bundle.module.url(forResource: "index", withExtension: "html") {
            web.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return web
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
