//
//  KisiEkleViewController.swift
//  KisilerUygulamasi
//
//  Created by Muhammet on 30.07.2022.
//

import UIKit

class KisiEkleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext  // veritanında veri kayıt işlemleri

    @IBOutlet weak var kisiAdTextfield: UITextField!
    @IBOutlet weak var kisiTelTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ekle(_ sender: Any) {
        
        if let ad = kisiAdTextfield.text, let tel = kisiTelTextfield.text {
           
            let kisi = Kisiler(context: context) // bu nesneyle veritabanına erişmiş oluyoruz
            kisi.kisi_ad = ad
            kisi.kisi_tel = tel
            
            appDelegate.saveContext()
        }
        
        
    }
    
}

