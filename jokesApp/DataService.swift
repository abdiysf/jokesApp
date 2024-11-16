//
//  DataService.swift
//  jokesApp
//
//  Created by Abdirahman Standard on 30/10/24.
//

import Foundation


// MARK: - website //https://jokeapi.dev/
struct DataService{
    let baseUrl = "https://v2.jokeapi.dev/joke/Programming?type=single"
    
    
    func getJoke() async -> JokeModel? {
        guard let url = URL(string: baseUrl) else { return nil }
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                
                let decoder = JSONDecoder()
                let jokes = try decoder.decode(JokeModel.self, from: data)
                
                return jokes
            }
            catch {
                print("Error fetching joke: \(error)")
                return nil
            }
        
        }
       
}
