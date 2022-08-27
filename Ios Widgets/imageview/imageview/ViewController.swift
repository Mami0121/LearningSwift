//
//  ViewController.swift
//  imageview
//
//  Created by Muhammet on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resimtikla1(_ sender: Any) {
        imageView.image = UIImage(named: "resim")
    }
    
    @IBAction func resimtıkla2(_ sender: Any) {
        imageView.image = UIImage(named: "stevejobs")
    }
}

