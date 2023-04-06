//
//  AddCityViewController.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}


class AddCityViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    private var addWeatherVM =  AddWeatherViewModel()
    var delegate:AddWeatherDelegate?
    
    @IBAction func saveCityButton(){
        
        if let city = cityTextField.text{
            addWeatherVM.addWeather(for: city) { vm in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    @IBAction func close(){
        self.dismiss(animated: true, completion: nil)

    }
    
}
