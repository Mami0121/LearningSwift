//
//  ViewController.swift
//  CoreData Giris
//
//  Created by Muhammet on 30.07.2022.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    var KisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //veriKaydi()
        
        //veriOkumaSiralama()
        
        //veriSil()
        
       // veriGuncelle()
        
        //veriOkuma()
        
        veriOkumaFiltreleme()
    }

    func veriKaydi() {
        
        let kisi = Kisiler(context: context)
     
        kisi.kisi_adi = "Ahmet"
        kisi.kisi_yas = 18
        
        appDelegate.saveContext()
    }
    
    func veriOkuma() {
        
        do {
            
            KisilerListe = try context.fetch(Kisiler.fetchRequest())
            
        }catch {
            print("Dosya okunurken hata oluştu")
        }
           
        for k in KisilerListe {
            print("Ad: \(k.kisi_adi!) - Yaş: \(k.kisi_yas)")
            
        }
        
    }
    
    func veriOkumaSiralama() {
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: true)
        
        fetchRequest.sortDescriptors = [sort]
        
        do {
            
            KisilerListe = try context.fetch(fetchRequest)
            
        }catch {
            print("Dosya okunurken hata oluştu")
        }
           
        for k in KisilerListe {
            print("Ad: \(k.kisi_adi!) - Yaş: \(k.kisi_yas)")
            
        }
        
    }
    
    func veriOkumaFiltreleme() {
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 27)
        
        do {
            
            KisilerListe = try context.fetch(fetchRequest)
            
        }catch {
            print("Dosya okunurken hata oluştu")
        }
           
        for k in KisilerListe {
            print("Ad: \(k.kisi_adi!) - Yaş: \(k.kisi_yas)")
            
        }
        
    }
    
    func veriSil() {
        
        let kisi = KisilerListe[1]
        
        context.delete(kisi)
        
        appDelegate.saveContext()
        
    }
    
    func veriGuncelle() {
        
        let kisi = KisilerListe[1]
        
        kisi.kisi_adi = "yeni Ahmet"
        kisi.kisi_yas = 99
        
        appDelegate.saveContext()
        
    }

}

