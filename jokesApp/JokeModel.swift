//
//  JokeModel.swift
//  jokesApp
//
//  Created by Abdirahman Standard on 30/10/24.
//

import Foundation

struct JokeModel: Codable {
    let error: Bool
    let category: String
    let type: String
    let joke: String
    let flags: Flags
    let id: Int
    let safe: Bool
    let lang: String
    
    struct Flags: Codable {
        let nsfw: Bool
        let religious: Bool
        let political: Bool
        let racist: Bool
        let sexist: Bool
        let explicit: Bool
    }
}
