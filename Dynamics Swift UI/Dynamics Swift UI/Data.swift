//
//  Model.swift
//  Dynamics Swift UI
//
//  Created by Vsevolod Onishchenko on 14.12.2019.
//  Copyright © 2019 oneactionapp. All rights reserved.
//

import Foundation

let coffeeData: [Coffee] = load("coffee")

func load<T: Decodable>(_ fileName: String, type: T.Type = T.self) -> T {
    let data: Data
    guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
        fatalError("You are just fucked up")
    }
    
    do {
        data = try Data(contentsOf: url)
    }
    catch {
        fatalError("You are just fucked up")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch {
        fatalError("You are just fucked up")
    }
}
