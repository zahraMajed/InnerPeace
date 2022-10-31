//
//  MusicView.swift
//  InnerPeace
//
//  Created by Amani Almutairi  on 06/04/1444 AH.
//

import SwiftUI

struct MusicView: View {
    var body: some View {
    
        VStack (spacing: 8){
            Image("Music1")
            
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400.0 , height:400.0 )
                .ignoresSafeArea()
            
            Spacer()
            
        
        HStack{
            Spacer()
            VStack {
            Button {
    
            } label: {
                Image("Jazz")
                    .resizable()
                    .frame(width: 160.0, height: 160.0)
                    .cornerRadius(8)
                    .position(x: 90, y:50)
            }
            Text("Jazz")
                 .font(.custom("Helvetica", size: 21))
            }
        Spacer()
        VStack{
            Button {
              
            } label: {
                Image("Rock")
                    .resizable()
                    .frame(width: 160.0, height: 160.0)
                    .cornerRadius(8)
                    .position(x: 90, y:50)
            }
            Text("Rock")
                 .font(.custom("Helvetica", size: 21))
        }}
        Spacer()
        HStack {
            Spacer()
            VStack{
                Button {
                  
                } label: {
                    Image("Cello")
                        .resizable()
                        .frame(width: 160.0, height: 160.0)
                        .cornerRadius(8)
                        .position(x: 90, y:66)
                }
                Text("Cello")
                     .font(.custom("Helvetica", size: 21))
                     .position(x: 90, y:80)
            }
        Spacer()
        VStack{
            Button {
              
            } label: {
                Image("Piano")
                    .resizable()
                    .frame(width: 160.0, height: 160.0)
                    .cornerRadius(8)
                    .position(x: 90, y:66)
            }
            Text("Piano")
                 .font(.custom("Helvetica", size: 21))
                 .position(x: 90, y:80)
        }
        }
        
        }
        
        
        
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
