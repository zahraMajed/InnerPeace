//
//  DepressionTestView2.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 08/04/1444 AH.
//

import SwiftUI

struct DepressionTestView2<Content: View>: View {
    //MARK: Variable
    @EnvironmentObject var depressionSettingObj : DepressionSettings
    let answersDic: [Int: String] = [0:"Not at all",
                                      1:"A little",
                                      2:"Somewhat",
                                      3:"Much"]
    /*let questionsArray = [
        "Trouble falling or staying asleep, or sleeping too much",
        "Feeling tired or having little energy",
        "Poor appetite or overeating",
        "Feeling bad about yourself - or that you are a failure or have let yourself or your family down",
        "Trouble concentrating on things, such as reading the newspaper or watching television",
        "Moving or speaking so slowly that other people could have noticed or the opposite - being so fidgety or restless that you have been moving around a lot more than usual",
     "Thoughts that you would be better off dead, or of hurting yourself"]*/
    
    let testQuestion: String
    let progressValue: Int
    let testNum: String
    let secondViewToNav: Content
    
    var body: some View {
        VStack {
        Spacer()
            Text("Depression Test")
            .font(.custom("Helvetica", size: 34))
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .frame(width: 353, height: 60, alignment: .leading)

//Questions
            Text(testQuestion)
            .font(.custom("Helvetica", size: 22))
            .fontWeight(.bold)
            .frame(width: 346, alignment: .leading)
            .frame(maxWidth: .infinity)
            .offset(x:10,y: 80)
        
// Answers
            VStack(spacing: 20){
            ForEach(answersDic.sorted(by: >), id: \.key) {
                key, value in
                NavigationLink {
                    secondViewToNav
                } label: {
                    Text("\(value)")
                        .font(.custom("Helvetica", size: 21))
                        .foregroundColor(Color.black)
                        .frame(width: 346.0, height: 48.0)
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2)
                }.simultaneousGesture(TapGesture().onEnded{
                    depressionSettingObj.score += key
                    print("The updated score in view: \(depressionSettingObj.score)")
                })
            }//foreach
        }.padding().offset(x: 0, y:130)

//ProgressPar
            ZStack {
                Text(testNum)
                    .font(.custom("Helvetica", size: 21))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .frame(width: 361, height: 52.0, alignment: .leading)
                    .offset(x:2,y: 50)
                Path() { path in
                    path.move(to: CGPoint(x: 20, y: 250))
                    path.addLine(to: CGPoint(x: 370, y: 250))
                }.stroke(Color("Gray"), lineWidth: 4)
                
                Path() { path in
                    path.move(to: CGPoint(x: 20, y: 250))
                    path.addLine(to: CGPoint(x: progressValue, y: 250))
                }.stroke( Color("SecondaryColorGreyGreen"), lineWidth: 4)
            }
        }//genral VStack
    }
}

struct DepressionTestView2_Previews: PreviewProvider {
    static var previews: some View {
        DepressionTestView2(testQuestion: "Feeling down, depressed, or hopeless" , progressValue: 80, testNum: "2/9", secondViewToNav: DepressionTestView3())
    }
}
