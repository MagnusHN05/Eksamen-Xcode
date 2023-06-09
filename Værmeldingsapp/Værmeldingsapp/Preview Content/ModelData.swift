//
//  ModelData.swift
//  Værmeldingsapp
//
//  Created by Magnus Holth Nysveen on 08/06/2023.
//

import SwiftUI

var previewWeather: ResponseBody = load("weatherData.json")


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("kan ikke finne \(filename) .")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("kan ikke loade \(filename) :\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Error \(filename) av \(T.self):\n\(error)")
    }
}
