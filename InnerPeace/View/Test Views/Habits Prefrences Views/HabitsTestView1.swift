//
//  HabitsTestView1.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 06/04/1444 AH.
//

import SwiftUI
import Collections

struct HabitsTestView1: View {
    //MARK: Variable
    @StateObject var routineSettingObj = RoutineSettings()
    @State private var hideBar = true
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 144))
    ]
 
    //MARK: Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    Text("Habits Test")
                    .font(.custom("Helvetica", size: 34))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(width: 353, height: 60, alignment: .leading)
                            
                Text("Choose your current habits")
                    .font(.custom("Helvetica", size: 21))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(width: 346, height: 52, alignment: .leading)
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        ForEach(routineSettingObj.habitsDic.sorted(by: <), id: \.key) {
                            key, value in
                            VStack {
                                Button {
                                    
                                    if routineSettingObj.habitsDic[key] == 0 {
                                        routineSettingObj.habitsDic[key] = 1
                                    } else  {
                                        routineSettingObj.habitsDic[key] = 0
                                    }
                                    if routineSettingObj.habitsDic[key] == 1 {
                                        routineSettingObj.userHabitsArray.append(key)
                                    }else {
                                        if let index = routineSettingObj.userHabitsArray.firstIndex(of: key) {
                                            routineSettingObj.userHabitsArray.remove(at: index)
                                        }
                                    }
                                } label: {
                                    Image(key)
                                        .resizable()
                                        .frame(width: 144.0, height: 134.0)
                                        .cornerRadius(8)
                                        .border(Color ("SecondaryColorGreyGreen"), width: routineSettingObj.habitsDic[key] == 1 ? 5 : 0)
                                }
                                Text(key)
                                .font(.custom("Helvetica", size: 21))
                            }
                        }
                    }
                }//end ScrollView
                
                NavigationLink {
                    NewHabitsView()
                } label: {
                    Text("Next")
                        .font(.custom("Helvetica", size: 21))
                        .foregroundColor(Color("PrimaryColorB"))
                }.simultaneousGesture(TapGesture().onEnded {
                    self.hideBar = false
                 })

             //end General VStack
            }.navigationBarHidden(hideBar)
                .onAppear {
                self.hideBar = true 
            }
        }.environmentObject(routineSettingObj)
    }
}


struct HabitsTestView1_Previews: PreviewProvider {
    static var previews: some View {
        HabitsTestView1()
    }
}
