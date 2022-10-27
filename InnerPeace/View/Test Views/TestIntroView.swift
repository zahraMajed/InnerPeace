//
//  TestIntroView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 02/04/1444 AH.
//

import SwiftUI

struct TestIntroView: View {
    
    //MARK: Variable
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    //MARK: Body
    var body: some View {
        VStack {
            Image("OnBording2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 390, height: 238)
                .clipped()
                .offset(x: 0, y: 100)
            
            //Title and Subtitle
            VStack (alignment: .center,spacing: 18) {
                Text("Fisrt, we’re going to go through a few question")
                    .font(.custom("Helvetica", size: 25))
                    .bold()
                    .textCase(.uppercase)
                Text("To help you build new habits in a wellness routine! Here is our journey")
                    .fontWeight(.light)
                    .font(.custom("Helvetica", size: 18))
                    .frame(width: 362, height: 66, alignment: .center)
            }.offset(x: 0, y: 150)
            
            //Creating the journey path
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x: 0, y: 145))
                    path.addLine(to: CGPoint(x: 390, y: 145))
                }
                .stroke(Color("SecondaryColorGreyGreen"), lineWidth: 2)

                VStack (spacing: 10){
                    ZStack {
                        HStack(spacing: 100){
                            Circle()
                                .frame(width: 32, height: 32)
                            Circle()
                                .frame(width: 32, height: 32)
                            Circle()
                                .frame(width: 32, height: 32)
                        }.foregroundColor(Color("SecondaryColorGreyGreen"))
                        HStack(spacing: 121){
                            Text("1")
                                .font(.custom("Helvetica", size: 21))
                            Text("2")
                                .font(.custom("Helvetica", size: 21))
                            Text("3")
                                .font(.custom("Helvetica", size: 21))
                        }
                        .foregroundColor(.white)
                    }
                    HStack(spacing: 40){
                        Text("Anxiety test")
                            .font(.custom("Helvetica", size: 12))
                            .fontWeight(.light)
                            .padding(.leading, 20.0)
                        Text("Depression test")
                            .font(.custom("Helvetica", size: 12))
                            .fontWeight(.light)
                            .padding(.leading)
                        Text("Habits prefrences")
                            .font(.custom("Helvetica", size: 12))
                            .fontWeight(.light)
                            .padding(.leading, 10.0)
                    }
                }
            }.offset(x: 0, y: 70)
            
            //Button
            Button("Start Anxiety test") {
                }
            .frame(width: 327, height: 41)
            .background(Color("PrimaryColorB"))
            .foregroundColor(.white)
            .cornerRadius(10)
            Spacer()
        }.fullScreenCover(isPresented: $shouldShowOnboarding) {
            OnboardingScreensView(shouldShowOnboarding: $shouldShowOnboarding)}
    }//end body
}

struct TestIntroView_Previews: PreviewProvider {
    static var previews: some View {
        TestIntroView()
    }
}
