//
//  String+Extensions.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation

extension String{
    func escaped() -> String{
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
