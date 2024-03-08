//
//  mansiViewController.swift
//  Mansi_Gandhi_MT_8966204
//
//  Created by user240208 on 3/4/24.
//

import UIKit

class mansiViewController: UIViewController , UITextFieldDelegate {
    
    // scene 2 
    @IBOutlet weak var aValueText: UITextField!
    @IBOutlet weak var bValueText: UITextField!
    @IBOutlet weak var cValueText: UITextField!
    @IBOutlet weak var calculateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the delegate for text fields to self
        aValueText.delegate = self
        bValueText.delegate = self
        cValueText.delegate = self
                
        // Set up numeric keyboard for text fields
        setupNumericKeyboard()
    }
    
    //create  func for numeric keypad
    func setupNumericKeyboard() {
            aValueText.keyboardType = .numberPad
            bValueText.keyboardType = .numberPad
            cValueText.keyboardType = .numberPad
        }
    
    @IBAction func clearAll(_ sender: Any) {
        //to clear all text values and print enter a value a,b and c to find x.
        aValueText.text = ""
        bValueText.text = ""
        cValueText.text = ""
        
        //i use if ..else , if all text field are empty it will print message
        if aValueText.text?.isEmpty == true && bValueText.text?.isEmpty == true && cValueText.text?.isEmpty == true {
            calculateLabel.text = "Enter a value for A, B and C to find X."
            calculateLabel.isHidden = false
            } else {
                calculateLabel.text = ""
                calculateLabel.isHidden = true
            }
            // Dismiss the keyboard
            view.endEditing(true)
        }

    
    @IBAction func calculateValues(_ sender: Any) {
        //here, i am geting a valid numeric value for 'A' from aValueText's text
        guard let aText = aValueText.text,
                let a = Double(aText), a != 0 else {
                //if 'A' is invalid and so return displayerror
                displayError(message: "The value of A is invalid")
                return
            }
        // here , i am geting  a valid numerical value for 'B' from bValueText's text
        guard let bText = bValueText.text,
                let b = Double(bText) else {
                //if 'B' is invalid and so return displayerror
                displayError(message: "The value of B is invalid.")
                return
            }
        // here , i am obtain a valid numerical value for 'C' from cValueText's text
        guard let cText = cValueText.text,
                 let c = Double(cText) else {
                 //if 'C' is invalid and so return displayerror
                 displayError(message: "The value of C is invalid.")
                 return
            }
            
            //Calculate the discriminant using the formula: b^2 - 4ac
            let discriminant = (b * b) - (4 * a * c)
            
            //here i use switch case for check the value of the discriminant
            switch discriminant {
            case ..<0:
                // Display an error if the discriminant is less than zero, indicating no results
                displayError(message: "There are no results since the discriminant is less than zero.")
            case 0:
                // If the discriminant is zero, calculate and display a single value for X
                let x = -b / (2 * a)
                calculateLabel.text = "There is only one value for X: \(x)"
                calculateLabel.isHidden = false
            default:
                // If the discriminant is positive, calculate and display two values for X
                let x1 = (-b + sqrt(discriminant)) / (2 * a)
                let x2 = (-b - sqrt(discriminant)) / (2 * a)
                calculateLabel.text = "There are two values for X: \(x1) and \(x2)"
                view.endEditing(true)
            }
    }
    
    //create a function for displaying error 
    func displayError(message: String) {
        calculateLabel.text = message
        calculateLabel.isHidden = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

