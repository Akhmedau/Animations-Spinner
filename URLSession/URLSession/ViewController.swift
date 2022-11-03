//
//  ViewController.swift
//  URLSession
//
//  Created by АХМЕДОВ НИКОЛАЙ on 16/10/2022.
//  Copyright © 2022 Ahmedov Nikolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageWidth = ""
    var imageHeight = ""

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func getImage(_ sender: Any) {
    
    let API = "https://picsum.photos/" + imageWidth + "/" + imageHeight
    
    guard let apiURL = URL(string: API) else {
    fatalError("Error")
    }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: apiURL) { (data, responce, error) in
            guard let data = data, error == nil else {return}
            DispatchQueue.main.async {
                //data = jpg
                self.imageView.image = UIImage(data: data)
            }
        }
        task.resume()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let height = imageView.bounds.height
        self.imageHeight = String(format: "%.0f", Double(height))
        let width = imageView.bounds.width
        self.imageWidth = String(format: "%.0f", Double(width))
    }


}

