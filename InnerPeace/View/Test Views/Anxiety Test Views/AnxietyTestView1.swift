//
//  AnxietyTestView1.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 07/04/1444 AH.
//

import SwiftUI

struct AnxietyTestView1: View {
    
    let questionDic: [Int: String] = [0:"Not at all sure",
                                      1:"Several days",
                                      2:"Over half the days",
                                      3:"Nearly every day"]
    @State var score: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
           Text("Anxiety Test")
                .font(.custom("Helvetica", size: 34))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .frame(width: 353, height: 60, alignment: .leading)
            Spacer()
 
 // Question
            
            Text("Feeling nervous, anxious, or on edge")
                .font(.custom("Helvetica", size: 22))
                .fontWeight(.bold)
                .frame(width: 361, height: 52.0, alignment: .leading)
            
                Spacer()
// Answer
            VStack(spacing: 18){
              
                ForEach(questionDic.sorted(by: >), id: \.key) { key, value in
                                        
                    NavigationLink {
                        AnxietyTestView2()
                    } label: {
                        Text("\(value)")
                            .font(.custom("Helvetica", size: 21))
                            .foregroundColor(Color.black)
                            .frame(width: 346.0, height: 48.0)
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2)
                    }.onTapGesture {
                        score += key
                        print(score)
                    }
                }
            }.padding()
            
            Spacer()
            
 //ProgressPar
            VStack {
                
                ZStack {
                    Text("1/7")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .frame(width: 361, height: 52.0, alignment: .leading)
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 200))
                        path.addLine(to: CGPoint(x: 370, y: 200))
                    }.stroke(Color("Gray"), lineWidth: 4)
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 200))
                        path.addLine(to: CGPoint(x: 70, y: 200))
                    }.stroke( Color("SecondaryColorGreyGreen"), lineWidth: 4)
        
                }
                
            }//end of progress bar VStack
        }
        }
    }
}

struct AnxietyTestView1_Previews: PreviewProvider {
    static var previews: some View {
        AnxietyTestView1()
    }
}
