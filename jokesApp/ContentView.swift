//
//  ContentView.swift
//  jokesApp
//
//  Created by Abdirahman Standard on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var dataService = DataService()
    @State var joke :  JokeModel?
    var body: some View {
        VStack {
            Spacer()
            if let jokeText = joke?.joke {
                           Text(jokeText)
                               .font(.headline)
                               .padding()
                       } else {
                           Text("Press the button to get a joke!")
                               .foregroundColor(.gray)
                       }
            Spacer()
            Button("Get Joke") {
                Task {
                    joke = await self.dataService.getJoke()
                }
            }
            
        }
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}
