//
//  AnxietyTestView1.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 07/04/1444 AH.
//

import SwiftUI

struct AnxietyTestView1: View {
    var body: some View {
        NavigationView {
            
        VStack {
            
            HStack {
                Text("Anxiety Test")
                    .font(.custom("Helvetica", size: 34))
                    .bold()

                Spacer ()
                
            }
            
            Spacer()
 
 // Question
            Text("Feeling nervous, anxious, or on edge")
                .font(.custom("Helvetica", size: 22))
                .bold()
                .padding()
            
// Answer
            Button(action: {

                 }) {
                     Text("Not at all sure")
                         .font(.custom("Helvetica", size: 21))
                         .foregroundColor(.black)
                         .frame(minWidth: 0, maxWidth: .infinity)
                         .padding()
                         .background(Color.white)
                         .cornerRadius(25)
                         .shadow(color: .blue, radius: 2, x: 0, y: 2)
                         .padding()
                 }
            
            Button(action: {

                 }) {
                     Text("Several days")
                         .font(.custom("Helvetica", size: 21))
                         .foregroundColor(.black)
                         .frame(minWidth: 0, maxWidth: .infinity)
                         .padding()
                         .background(Color.white)
                         .cornerRadius(25)
                         .shadow(color: .blue, radius: 2, x: 0, y: 2)
                         .padding()
                 }
            
            Button(action: {

                 }) {
                     Text("Over half the days")
                         .font(.custom("Helvetica", size: 21))
                         .foregroundColor(.black)
                         .frame(minWidth: 0, maxWidth: .infinity)
                         .padding()
                         .background(Color.white)
                         .cornerRadius(25)
                         .shadow(color: .blue, radius: 2, x: 0, y: 2)
                         .padding()
                 }
            
            Button(action: {

                 }) {
                     Text("Nearly every day")
                         .font(.custom("Helvetica", size: 21))
                         .foregroundColor(.black)
                         .frame(minWidth: 0, maxWidth: .infinity)
                         .padding()
                         .background(Color.white)
                         .cornerRadius(25)
                         .shadow(color: .blue, radius: 2, x: 0, y: 2)
                         .padding()
                 }
            
            Spacer()
            
 //ProgressPar
            

            
 // NavigationLink
                NavigationLink(destination: Text("Second View")) {
                    Text("Next")
                }
 
            
        }
        .padding()
        }
    }
}

struct AnxietyTestView1_Previews: PreviewProvider {
    static var previews: some View {
        AnxietyTestView1()
    }
}
