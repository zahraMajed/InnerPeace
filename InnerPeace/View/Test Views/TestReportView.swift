//
//  TestReportView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 07/04/1444 AH.
//

import SwiftUI
import SwiftUICharts

struct TestReportView: View {
    @EnvironmentObject var anxietySettingObj : AnxietySettings
    
    //MARK: Variables
    let chartStyle = ChartStyle(backgroundColor: .white, accentColor: Color("SecondaryColorGreyGreen"), secondGradientColor: Color("SecondaryColorBeige"), textColor: .black, legendTextColor: .black, dropShadowColor: .white)
    
    //MARK: Body
    var body: some View {
        VStack {
            Spacer()
            BarChartView(data: ChartData(values: [("Anxiety", anxietySettingObj.score), ("Depression", 50)]), title: "", style: chartStyle, form: CGSize(width: 300, height: 300), animatedToBack: true)
                .padding(.leading, 45.0)
            
            Spacer()
            VStack (spacing: 28){
                
                HStack {
                    Text("Anxiety")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .padding(.leading)
                    Text("20 | 100")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                }
                .frame(width: 346.0, height: 48.0, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color("PrimaryColorB"), lineWidth: 1)
                .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2))
                
                HStack {
                    Text("Depression")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .padding(.leading)
                    Text("20 | 100")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                }
                .frame(width: 346.0, height: 48.0, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color("PrimaryColorB"), lineWidth: 1)
                .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2))
                
            }
            Spacer()
            
            Button("Discover my routine") {
                //got to RoutineView()
            }
            .frame(width: 346, height: 41)
            .background(Color("PrimaryColorB"))
            .foregroundColor(.white)
            .cornerRadius(10)
            Spacer()
        }
    }
    
}

struct TestReportView_Previews: PreviewProvider {
    static var previews: some View {
        TestReportView().environmentObject(AnxietySettings())
    }
}
