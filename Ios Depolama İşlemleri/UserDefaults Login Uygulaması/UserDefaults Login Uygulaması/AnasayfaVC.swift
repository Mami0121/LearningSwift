//
//  AnasayfaVC.swift
//  UserDefaults Login Uygulaması
//
//  Created by Muhammet on 29.07.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        let un = d.string(forKey: "userName") ?? "bos"
        
        labelSonuc.text = un
    }
    

    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "userName")
        d.removeObject(forKey: "password")
        
        exit(-1) // ana ekrana atıyor.
        
    }
}
