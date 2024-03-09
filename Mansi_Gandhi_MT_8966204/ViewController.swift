//
//  ViewController.swift
//  Mansi_Gandhi_MT_8966204
//
//  Created by user240208 on 2/27/24.
//

import UIKit

class ViewController: UIViewController {
    //scene 1 
    // here is the code for the part a where we have to get the picture printed when the user input the city name

    @IBOutlet weak var errorLabel: UILabel!
    //create array for city names
    var cityName : [String] = ["Montreal","Halifax" , "Toronto", "Vancouver", "Winnipeg", "Calgary"]
    
    //create another array  for optional UIImage objects representing city images
    var canCityImage : [UIImage?] = [UIImage(named : "Halifax"), UIImage(named : "Montreal") , UIImage(named : "Toronto"), UIImage(named : "Vancouver") , UIImage(named : "Winnipeg") , UIImage(named : "Calgary")]
    
    @IBOutlet weak var lblCanCities: UILabel!
    
    @IBOutlet weak var canCityimageView: UIImageView!
    
    @IBOutlet weak var inputCanCity: UITextField!
    
    @IBAction func buttonFindCanCity(_ sender: Any) {
        
        //use guard for Check if the input text is not empty
        guard let cityNameInput = inputCanCity.text else {
            errorLabel.text = "Field cannot be empty"
            errorLabel.isHidden = false
            return
        }
        
        // i use for loop for Search the index of the entered city name in the array
        var cityIndex = -1
        for index in 0..<cityName.count {
            if cityName[index] == cityNameInput {
                cityIndex = index
                break
            }
        }
        
        //create if else statement for , If the city is found, display its corresponding city image
        if cityIndex != -1 {
            canCityimageView.image = canCityImage[cityIndex]
            errorLabel.isHidden = true
        } else {
            // If the city is not found, display an error message
            errorLabel.text = "City not found"
            canCityimageView.image = nil // Set image to nil
            errorLabel.isHidden = false
            errorLabel.textColor = .red
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
}


