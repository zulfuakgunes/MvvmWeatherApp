//
//  WeatherResponse.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation

struct WeatherResponse: Decodable{
    let main:Weather
}

struct Weather: Decodable{
    let temp:Double
    let humidity:Double
}
