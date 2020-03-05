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
    
    func fetchUsers() {
        guard let url = URL(string: "https://dev-the-locker-room.herokuapp.com/api/users") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                do {
                    print("DATA!!! \(data)")
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//
//                    guard let jsonArr = json as? [[String: Any]] else {
//                        return
//                    }
//
//                    for dic in jsonArr {
//                        self.tableData.append(Users(dic))
//                    }
//
//                    DispatchQueue.main.async {
//                     self.tableView.reloadData()
//                    }
                    
                } catch {
                    print("Error! \(error)")
                }
            }
            
        }.resume()
    }
    
    func fetchUser(userId: String) {
        guard let url = URL(string: "https://dev-the-locker-room.herokuapp.com/api/user/\(userId)") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let data = data {
//                if let jsonString = String(data: data, encoding: .utf8) {
//                    print("Hello! \(jsonString)")
//
//                }
//                print("DATA \(data) response \(String(describing: response))")
                do {
                    let res = try JSONDecoder().decode(User.self, from: data)
                    
                    print("RES!! \(res)")
//                    print("DATA!!! \(data) \(response) \(error)")
//                    let json = try JSONSerialization.jsonObject(with: data, options: []) as? [User]
//
//                    print("JSON!!! \(String(describing: json))")
                    
//                    if let json = User() {
//                     self.user = json
//                    }
                   
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

