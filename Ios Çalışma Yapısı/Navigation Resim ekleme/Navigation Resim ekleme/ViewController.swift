//
//  ViewController.swift
//  Navigation Resim ekleme
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let resim = UIImage(named: "navBaslik")
        self.navigationItem.titleView = UIImageView(image: resim)
        
    }


}

