//
//  NewHabitsView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 08/04/1444 AH.
//

import SwiftUI

struct NewHabitsView: View {
    //MARK: Variable
    @State var newHabitList = ["Exercises", "Meditation", "Painting", "Music", "Journaling", "Naturalise"]
    @State private var showNextScreen = false
    //MARK: Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Choose and prioirtize fun new habits for you!")
                    .font(.custom("Helvetica", size: 21))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(width: 323, height: 52, alignment: .leading)
                Spacer()
                //creating list
                List {
                    ForEach(0..<newHabitList.count) { index in
                       Text(newHabitList[index])
                            .font(.custom("Helvetica", size: 21))
                            .fontWeight(.regular)
                            .padding(.bottom, 12)
                    }.onMove(perform: { indexSet, index in
                        self.newHabitList.move(fromOffsets: indexSet, toOffset: index)
                    }).onDelete(perform: delete)
                        .listRowSeparator(.hidden)
                }.frame(maxHeight: 400)
                    .listStyle(.plain)
                    .padding()
                    .navigationBarItems(trailing: EditButton())
                
                Button("Done") {
                    showNextScreen = true
                }
                .frame(width: 327, height: 41)
                .background(Color("PrimaryColorB"))
                .foregroundColor(.white)
                .cornerRadius(10)
                .fullScreenCover(isPresented: $showNextScreen) {
                    SettingRoutineView()
                }
                Spacer()
                

            }//end general VStack
        }
    }
    
    //MARK: Functions
    func delete(at offsets: IndexSet) {
            newHabitList.remove(atOffsets: offsets)
        }
    
}

struct NewHabitsView_Previews: PreviewProvider {
    static var previews: some View {
        NewHabitsView()
    }
}
