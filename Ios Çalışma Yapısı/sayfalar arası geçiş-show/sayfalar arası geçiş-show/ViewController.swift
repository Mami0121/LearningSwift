//
//  ViewController.swift
//  sayfalar arası geçiş-show
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonder(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "SayfaB") as! ViewControllerB
        
        let gönderilecekMesaj = girdiAlani.text
        let gidecekKisi = Kisiler(kisiId: 222, kisiAd: "Amet")
        
        gidilecekViewController.mesaj = gönderilecekMesaj!
        gidilecekViewController.kisi = gidecekKisi
        
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
    }
}

