//
//  RoutineView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 06/04/1444 AH.
//

import SwiftUI
import Collections

struct RoutineView: View {
    //MARK: Variable
    var welcomeMsg: String = ""
    let routineList = ["Exercises", "Meditation", "Music", "Journaling"]
    @State private var isChecked: OrderedDictionary = [
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
            Spacer()
            Text("Good morning!")
                .font(.custom("Helvetica", size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(width: 353, height: 60, alignment: .leading)
            Spacer()
            ZStack{
                Image("ProgressRectangle")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill).frame(width: 364, height: 317)
                
                VStack {
                    Spacer()
                    Text(Date.now, style: .date)
                        .font(.custom("Helvetica", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("My weekly progress")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    VStack (spacing: 10){
                        HStack(spacing: 18){
                            ForEach(isChecked.keys, id: \.self) {
                                Text("\($0)")
                                    .font(.custom("Helvetica", size: 18))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.black)
                            }
                            
                        }
                        HStack(spacing: 27){
                            ForEach(isChecked.values, id: \.self) { isChecked in
                                Button {
                                    
                                } label: {
                                    Image(systemName: isChecked ? "checkmark.circle.fill" : "circle.fill").foregroundColor(Color("SecondaryColorGreyGreen"))
                                }
                            }
                            
                            /*Button {
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
                            }*/
                        }
                    }//end progress VStack
                    Spacer()
                }
            }// end ZStack
            Spacer()
    
            Text("Today’s Routine")
                .font(.custom("Helvetica", size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(width: 353, height: 60, alignment: .leading)
            
            List {
                ForEach(0..<routineList.count) { index in
                    Button("\(routineList[index])") {
                        if routineList[index] == "Music" {
                            MusicView()
                        } else if routineList[index] == "Exercises" {
                            ExercisesView()
                        }
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
