//
//  ViewController.swift
//  UserDefaults Sayac Uygulaması
//
//  Created by Muhammet on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac") //uygulama açılır açılmaz okuma işlemi, değer yoksa 0 verir.
        
        sayac = sayac + 1
        
        d.set(sayac, forKey: "sayac") // veri tekrar kayıt edilir
        
        labelSayac.text = "Sayaç : \(sayac)"
    }


}

// uygulamayı aşağı alıp geri açtığında sayaç hep artar
