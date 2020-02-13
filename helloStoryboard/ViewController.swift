//
//  ViewController.swift
//  helloStoryboard
//
//  Created by Eoan on 13/02/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    var num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.textColor = #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1)
        myLabel.text = "Yeehaw"
        myTextField.becomeFirstResponder()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        num = num + 1
        myLabel.text = "\(num) Yeehaws for \(myTextField.text!)"
        myTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextField.resignFirstResponder()
    }
    
}

