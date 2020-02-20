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
    var user = [User]()
    var id: String = ""
    
    //Runs when the component has loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.text = id
        fetchUser(userId: id)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.text = id
    }
    
    func fetchUser(userId: String) {
        guard let url = URL(string: "http://dev.thelockerroom.ie/api/user/\(userId)") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: []) as? [User]
                    
                    print("JSON!!! \(String(describing: json))")
                    
                    if let json = User() {
                     self.user = json
                    }
                   
//                    if let dictionary = json as? [String: Any] {
//                        for dic in dictionary {
//                            self.user = dic
//                        }
//                    }
                    
//                   guard let jsonArr = json as? [[String: Any]] else {
//                       return
//                   }
//
//                   for dic in jsonArr {
//                       self.user.append(User(dic))
//                   }

                } catch {
                    print("Error! \(error)")
                }
            }
            
        }.resume()
    }
    
}

