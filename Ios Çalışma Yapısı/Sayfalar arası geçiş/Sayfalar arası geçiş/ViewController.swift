//
//  ViewController.swift
//  Sayfalar arası geçiş
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
        
        gidilecekViewController.mesaj = gönderilecekMesaj!
        
        self.present(gidilecekViewController, animated: true, completion: nil)
    }
    
}

