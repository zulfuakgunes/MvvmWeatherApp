//
//  AddWeatherViewModel.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation

class AddWeatherViewModel{
    
    func addWeather(for city:String, completion: @escaping (WeatherViewModel) -> Void){
        
        let weatherUrl = Constants.Urls.urlWeatherByCity(city: city)
        let weatherResource = Resource<WeatherResponse>(url: weatherUrl) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        Webservice().load(resource: weatherResource) { result in
            if let weatherResource = result{
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
    
}
