//
//  ViewController.swift
//  NavigationControllerOzellestirme
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Başlık"
        self.navigationItem.prompt = "Açıklama"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.red
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @IBAction func buttonEkle(_ sender: Any) {
        print("Ekle tıklandı")
    }
    
}

