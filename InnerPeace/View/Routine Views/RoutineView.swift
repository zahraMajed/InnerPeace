//
//  RoutineView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 06/04/1444 AH.
//

import SwiftUI

struct RoutineView: View {
    //MARK: Variable
    var welcomeMsg: String = ""
    let routineList = ["Exercises", "Meditation", "Music", "Journaling"]
    @State private var isChecked: [String:Bool] = [
        "Mon": false,
        "Tue": false,
        "Wed": false,
        "Thu": false,
        "Fri": false,
        "Sat":false,
        "Sun":false]
    
    //MARK: Body
    var body: some View {
        VStack{
            Text("Good morning!")
                .font(.custom("Helvetica", size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.yellow)
                .multilineTextAlignment(.center)
                .frame(width: 353, height: 60, alignment: .leading)
            
            ZStack{
                RoundedRectangle(cornerRadius: 8).frame(width: 364, height: 317)
                
                VStack {
                    Text(Date.now, style: .date)
                        .font(.custom("Helvetica", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.yellow)
                        .multilineTextAlignment(.center)
                    
                    Text("My weekly progress")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .foregroundColor(Color.yellow)
                        .multilineTextAlignment(.center)
                    
                    
                    VStack (spacing: 10){
                        HStack(spacing: 18){
                            Text("Mon")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                            Text("Tue")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                            Text("Wed")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                            Text("Thu")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                            Text("Fri")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                            Text("Sat")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                            Text("Sun")
                                .font(.custom("Helvetica", size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color.yellow)
                        }
                        HStack(spacing: 27){
                            Button {
                                isChecked["Mon"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Mon"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }
                            
                            Button {
                                isChecked["Tue"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Tue"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }

                            Button {
                                isChecked["Wed"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Wed"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }

                            Button {
                                isChecked["Thu"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Thu"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }
                            
                            Button {
                                isChecked["Fri"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Fri"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }
                            
                            Button {
                                isChecked["Sat"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Sat"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }
                            
                            Button {
                                isChecked["Sun"]?.toggle()
                            } label: {
                                Image(systemName: isChecked["Sun"]! ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                            }
                        }
                    }//end progress VStack
                }
            }// end ZStack
            
            Text("Today’s Routine")
                .font(.custom("Helvetica", size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.yellow)
                .multilineTextAlignment(.center)
                .frame(width: 353, height: 60, alignment: .leading)
            
            List {
                ForEach(0..<routineList.count) { index in
                    Button("\(routineList[index])") {
                        
                    }
                    .listRowSeparator(.hidden)
                    .frame(width: 346.0, height: 48.0)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("PrimaryColorB"), lineWidth: 1)
                            .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2)
                        )
                }
            }.listStyle(.plain)
        }
    }
    //MARK: Fuction
    
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView()
    }
}
