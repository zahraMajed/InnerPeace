//
//  AnxietyTestView2.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 07/04/1444 AH.
//

import SwiftUI

struct AnxietyTestView2<Content: View>: View {
    //MARK: Variable
    @EnvironmentObject var anxietySettingObj : AnxietySettings
    let answersDic: [Int: String] = [0:"Not at all sure",
                                      1:"Several days",
                                      2:"Over half the days",
                                      3:"Nearly every day"]
    /*let questionsArray = [
        "Not being able to stop or control worrying ?",
        "Worrying too much about different things ?",
        "Trouble relaxing ?",
        "Being so restless that it's hard to sit still ?",
        "Becoming easily annoyed or Irritable ?",
        "Becoming easily annoyed or Irritable ?"]*/
    
    let testQuestion: String
    let progressValue: Int
    let testNum: String
    let secondViewToNav: Content
    
    //MARK: Body
    var body: some View {
        VStack {
        Spacer()
            Text("Anxiety Test")
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
                    anxietySettingObj.score += key
                    print("The updated score in view: \(anxietySettingObj.score)")
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

struct AnxietyTestView2_Previews: PreviewProvider {
    static var previews: some View {
        AnxietyTestView2(
            testQuestion: "Not being able to stop or control worrying ?"
            , progressValue: 105
            , testNum: "2/7"
            , secondViewToNav: AnxietyTestView3())
    }
}
