//
//  ViewController.swift
//  Navigation 1
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Baslik Kod İle"
        self.navigationItem.prompt = "Açıklama Kod İle"
        
        self.navigationItem.largeTitleDisplayMode = .automatic
    }


}

