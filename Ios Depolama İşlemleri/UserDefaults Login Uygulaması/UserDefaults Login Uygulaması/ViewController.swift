//
//  ViewController.swift
//  UserDefaults Login Uygulaması
//
//  Created by Muhammet on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    
    @IBOutlet weak var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let un = d.string(forKey: "userName") ?? "bos"
        let ps = d.string(forKey: "password") ?? "bos"
        
        if un != "bos" && ps != "bos" {
         performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
        
    }

    @IBAction func girisYap(_ sender: Any) {
        
        if let un = textFieldKullaniciAdi.text, let ps = textFieldSifre.text {
            
            if un == "Admin" && ps == "123456" {
                
                d.set(un, forKey: "userName")
                d.set(ps, forKey: "password")
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
                
            }else {
                print("Hatalı Giriş")
            }
            
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

