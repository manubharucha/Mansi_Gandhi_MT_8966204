//
//  lab2ViewController.swift
//  Mansi_Gandhi_MT_8966204
//
//  Created by user240208 on 3/5/24.
//

import UIKit

class lab2ViewController: UIViewController {
    
    // Lab 2 comment
    @IBOutlet weak var label: UILabel!
    
    // I created two variable for plus and minus
    var count = 0
    var count1 = 1
                
    @IBAction func minusbutton(_ sender: Any) {
        // for Subtract the value of count1 from count
        count = count - count1
        label.text = String(count)
    }
    
    @IBAction func plusbutton(_ sender: Any) {
        //  for Add the value of count1 to count
        count = count + count1
        label.text = String(count)
    }
    
    @IBAction func Resetbutton(_ sender: Any) {
        //for  Reset count to 0 and set count1 back to 1
        count = 0
        count1 = 1
        label.text = String(count)
    }
    
    @IBAction func Step2button(_ sender: Any) {
        // for Set count1 to 2, changing the step value
        count1 = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
