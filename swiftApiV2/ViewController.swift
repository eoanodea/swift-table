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
        textView.text = "Loading..."
        fetchUser(userId: id)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func fetchUser(userId: String) {
        guard let url = URL(string: "https://dev-the-locker-room.herokuapp.com/api/user/\(userId)") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let user = try JSONDecoder().decode(User.self, from: data)
                    
                    DispatchQueue.main.async {
                        self.updateUI(user: user)
                    }

                } catch {
                    print("Error! \(error)")
                }
            }
            
        }.resume()
    }
    
    func updateUI(user: User) {
        textView.text = user.name
    }
    
}

