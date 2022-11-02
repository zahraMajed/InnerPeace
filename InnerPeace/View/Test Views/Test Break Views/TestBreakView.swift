//
//  TestBreakViewT.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 05/04/1444 AH.
//

import SwiftUI

struct TestBreakView<Content: View>: View {
    
    //MARK: Variable
    var subTitle: String
    var btnText: String
    let secondViewToNav: Content
    @State private var showNextScreen = false
    
    //MARK: Body
    var body: some View {
        VStack {
            Spacer()
            LottieView(JSONFileName: "Logo", isLoop: false).frame(width: 390, height: 238, alignment: .center)
            //Title and Subtitle
            Spacer()
            VStack (alignment: .center, spacing: 20) {
                Text("Do you know ?")
                    .font(.custom("Helvetica", size: 25))
                    .bold()
                Text(subTitle)
                    .fontWeight(.light)
                    .font(.custom("Helvetica", size: 18))
                    .frame(width: 335, height: 44, alignment: .center)
            }
            
            //Button
            Spacer()
            Button(btnText) {
                showNextScreen = true
            }
            .frame(width: 327, height: 41)
            .background(Color("PrimaryColorB"))
            .foregroundColor(.white)
            .cornerRadius(10)
            .fullScreenCover(isPresented: $showNextScreen) {
                secondViewToNav
            }
            Spacer()
        }
    }
}

struct TestBreakViewT_Previews: PreviewProvider {
    static var previews: some View {
        TestBreakView(subTitle: "Anxiety and depression are linked!", btnText: "Start Depression test", secondViewToNav: DepressionTestView1())
    }
}
