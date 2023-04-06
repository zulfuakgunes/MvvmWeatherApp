//
//  Constants.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation

struct Constants{
    struct Urls{
        static func urlWeatherByCity(city:String) -> URL{
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=edb085dabbadbc44ce1c556f0f5a7570&units=imperial")!
        }
    }
}
