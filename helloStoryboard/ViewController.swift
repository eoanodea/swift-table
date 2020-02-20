//
//  ViewController.swift
//  helloStoryboard
//
//  Created by Eoan on 13/02/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var text: String = ""
    
    //Runs when the component has loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.text = text
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.text = text
    }
    
}

