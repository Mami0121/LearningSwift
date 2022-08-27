//
//  ViewControllerB.swift
//  sayfalar arası geçiş-show
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    var mesaj:String?
    var kisi = Kisiler()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Kişi id: \(kisi.kisiId!) Kişi Ad: \(kisi.kisiAd!)")
        etiket.text = mesaj!
    }
}
