//
//  AnimatedLogo.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 05/04/1444 AH.
//

import SwiftUI
import Lottie

struct LottieView : UIViewRepresentable {
    
    var JSONFileName: String
    
    func makeUIView(context: Context) -> LottieAnimationView {
        
        let lottieAnimation = LottieAnimationView(name: JSONFileName, bundle: Bundle.main)
        lottieAnimation.loopMode = .playOnce
        lottieAnimation.contentMode = .scaleAspectFit
        lottieAnimation.play()
        return lottieAnimation
    }
    
    func updateUIView(_ uiView: LottieAnimationView, context: Context) {
        // do noting
    }
}
