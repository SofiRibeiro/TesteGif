//
//  GifImage.swift
//  testeGif Watch App
//
//  Created by sofia.ribeiro on 25/11/22.
//

import SwiftUI
import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet weak var movieView: WKInterfaceMovie!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        setupVideoPlayer()
    }

    func setupVideoPlayer() {
        guard let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") else {
            return
    }

        movieView.setMovieURL(videoURL)
        movieView.setVideoGravity(.resizeAspectFill)
    }
}

struct GifImage_Previews: PreviewProvider {
    static var previews: some View {
        GifImage()
    }
}
