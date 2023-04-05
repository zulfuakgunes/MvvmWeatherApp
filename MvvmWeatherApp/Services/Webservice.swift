//
//  Webservice.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation

struct Resource<T>{
    let url:URL
    let parse: (Data) -> (T?)
}


class Webservice{
    
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()){
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            if let data{
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }else{
                completion(nil)
            }
        }.resume()
    }
    
}
