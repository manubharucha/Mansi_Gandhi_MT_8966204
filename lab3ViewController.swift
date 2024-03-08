//
//  lab3ViewController.swift
//  Mansi_Gandhi_MT_8966204
//
//  Created by user240208 on 3/5/24.
//

import UIKit

class lab3ViewController: UIViewController {
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var CountryName: UITextField!
    @IBOutlet weak var AgeField: UITextField!
    @IBOutlet weak var InvisibleLabel: UILabel!
    @IBOutlet weak var InformationTextView: UITextView!
    
    @IBAction func AddButton(_ sender: UIButton) {
        //Combine user input into a userdetails string
        let userdetails = "firstName: \(FirstName.text ?? "")\nlastName: \(LastName.text ?? "")\ncountryName: \(CountryName.text ?? "")\nage: \(AgeField.text ?? "")"
        InformationTextView.text = userdetails
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        // i use if..else statement for user input their details
        if let firstName = FirstName.text, !firstName.isEmpty,
           let lastName = LastName.text, !lastName.isEmpty,
           let countryName = CountryName.text, !countryName.isEmpty,
           let age = AgeField.text, !age.isEmpty
        {InvisibleLabel.text = "Successfully Submitted"}else
        {InvisibleLabel.text = "Complete the missing Information"}
        InvisibleLabel.isHidden = false
    }
    
    
    @IBAction func ClearButton(_ sender: Any) {
        // for clear user  all details
        FirstName.text = ""
        LastName.text = ""
        CountryName.text = ""
        AgeField.text = ""
        InformationTextView.text = ""
        InvisibleLabel.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
