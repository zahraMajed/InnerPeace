//
//  OnboardingViewT.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 02/04/1444 AH.
//

import SwiftUI

struct OnboardingViewT: View {
    
    //MARK: Variable
    let imageName: String
    let title:String
    let subtitle: String
    let showDismissBtn: Bool
    //@Binding var shouldShowOnboarding: Bool
    
    //MARK: Body
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill).frame(width: 390, height: 456)
                .clipped()
            
            Spacer()
            VStack (alignment: .leading,spacing: 18){
                Text(title)
                    .font(.custom("Helvetica", size: 25))
                    .bold()
                    .textCase(.uppercase)

                Text(subtitle)
                    .font(.custom("Helvetica", size: 18))
                    .frame(width: 327, alignment: .leading)
            }
            Spacer()
            if showDismissBtn {
                Button("Get Started") {
                    //shouldShowOnboarding.toggle()
                }
                .frame(width: 327, height: 41)
                .background(Color("PrimaryColorB"))
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            Spacer()
        }.ignoresSafeArea()

    }
}

struct OnboardingViewT_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewT(imageName: "OnBording2",
                        title: "Start small, Go big!",
                        subtitle: "We help you deal with depression and anxiety by building a flexible wellness routine.",
                        showDismissBtn: true)
    }
}
