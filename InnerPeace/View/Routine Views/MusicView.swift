//
//  MusicView.swift
//  InnerPeace
//
//  Created by Amani Almutairi  on 06/04/1444 AH.
//

import SwiftUI

struct Result: Codable {
    let trackId: Int
    let trackName: String
    let collectionName: String
}

struct Resonse: Codable {
    let results: [Result]
}

struct MusicView: View {
    //MARK: Varibale
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 144))
    ]
    @State var results = [Result]()
    
    var body: some View {
    
        VStack (spacing: 8){
            Image("Music1")
            
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400.0 , height:400.0 )
                .cornerRadius(10)
                .ignoresSafeArea()
       
            List(results, id: \.trackId) { item in
                HStack() {
                    Image("Jazz")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(8)
                    VStack (alignment: .leading) {
                        Spacer()
                        Text(item.trackName)
                            .font(.headline)
                        Spacer()
                        Text(item.collectionName)
                        Spacer()
                    }
                }//end vstack
            }.listStyle(.plain)
                .onAppear {
                loadData()
            }
            Spacer()
        }
    }
    func loadData() {
        guard let url = URL(string: "http://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Resonse.self, from: data) {
                    DispatchQueue.main.async {
                        self.results = decodedResponse.results
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "unknown error")")
        }.resume()
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
