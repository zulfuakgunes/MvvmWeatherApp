//
//  AddCityViewController.swift
//  MvvmWeatherApp
//
//  Created by Zülfü Akgüneş on 5.04.2023.
//

import Foundation
import UIKit

class AddCityViewController: UIViewController{
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBAction func saveCityButton(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func close(){
        self.dismiss(animated: true, completion: nil)

    }
    
}
