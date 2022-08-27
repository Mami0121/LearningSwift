//
//  ViewController.swift
//  Firebase Kullanimi
//
//  Created by Muhammet on 6.08.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var ref:DatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        //kisiEkle()
        //kisiSil()
        //kisiGuncelle()
        //tumKisiler()
        //kisiEqualSorgu()
        //kisiLimitSorgu()
        kisiDegerAraligiSorgu()
    }
    
    func kisiEkle(){
        
        let yeniKisi = Kisiler(kisi_ad:"Mehmet",kisi_yas:18)
        
        let dict:[String:Any] = ["kisi_ad":yeniKisi.kisi_ad!,"kisi_yas":yeniKisi.kisi_yas!]
        
        let newRef = ref?.child("kisiler").childByAutoId() // otomatik id oluşturma
        
        newRef?.setValue(dict)
        
    }
    
    func kisiSil(){
        
        ref?.child("kisiler").child("-N8ravK97z8IfoFWtoGk").removeValue()
        // kiiler tblosundaki bu id olan kayıdı sil
    
    }
    
    func kisiGuncelle(){
        
        let dict:[String:Any] = ["kisi_ad":"Yeni Ahmet","kisi_yas":99]
        
        ref?.child("kisiler").child("-N8rb2dHXeet_Nvwvue3").updateChildValues(dict)
        
    }


    func tumKisiler(){
        
        ref?.child("kisiler").observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
    
                }
                
            }

        })
        
        
    }
    
    func kisiEqualSorgu(){
        
        let sorgu = ref?.child("kisiler").queryOrdered(byChild: "kisi_ad").queryEqual(toValue: "Talat")
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
                    
                }
                
            }
            
        })
        
        
    }

    func kisiLimitSorgu(){
        
        let sorgu = ref?.child("kisiler").queryLimited(toFirst: 1)
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
                    
                }
                
            }
            
        })
        
        
    }
    
    func kisiDegerAraligiSorgu(){
        
        let sorgu = ref?.child("kisiler").queryOrdered(byChild: "kisi_yas").queryStarting(atValue: 18).queryEnding(atValue: 90)
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
                    
                }
                
            }
            
        })
        
        
    }

}

