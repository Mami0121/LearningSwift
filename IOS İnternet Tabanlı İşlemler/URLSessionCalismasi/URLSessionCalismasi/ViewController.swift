//
//  ViewController.swift
//  URLSessionCalismasi
//
//  Created by Muhammet on 5.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //kisiEkle()
        //kisiSil()
        //kisiGuncelle()
        //tumKisiler()
        //AramaYap()
        tumKisileriAlCodable()
    }
    
    func kisiEkle() {

        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!)
        
        request.httpMethod = "POST"
        
        let postString = "kisi_ad=TESTad&kisi_tel=TESTtel"
        
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data,response,error) in
            
            if error != nil || data == nil {
                
                print("Hata")
                return
            }
            
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:Any] {
                    print(json)
                }
                
            } catch{
                print(error.localizedDescription)
            }
            
        }.resume()
    }


    func kisiSil(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        //post isteği yapılacak url
        request.httpMethod = "POST"//Metod türü
        
        let postString = "kisi_id=59"//Gönderilecek veriler & işareti ile ayrılır.
        
        request.httpBody = postString.data(using: .utf8)//Veri gönderilirken türkçeye uygun olmalıdır.
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {//hata ve veri kontrolü
                print("Hata")
                return//Hata oluşursa task çalışması durdurulur.
            }
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    print(json)
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    func kisiGuncelle(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!)
       
        request.httpMethod = "POST"
        
        let postString = "kisi_id=89&kisi_ad=TESTadx&kisi_tel=TESTtelx"
        
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    
                    print(json)
                }
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    
    func tumKisiler(){
        
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    if let kisiler = json["kisiler"] as? [[String:Any]] { //array çift [[
                        
                        for kisi in kisiler {//Gelen json dizisinin içindeki nesneleri almak için döngü
                            
                            print("kisi id    : \(kisi["kisi_id"]!)")
                            print("kisi ad    : \(kisi["kisi_ad"]!)")
                            print("kisi tel   : \(kisi["kisi_tel"]!)")
                            
                        }
                    }
                    
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    func AramaYap(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        
        request.httpMethod = "POST"
        
        let postString = "kisi_ad=a"
        
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    
                    if let kisiler = json["kisiler"] as? [[String:Any]] {
                        
                        for kisi in kisiler {
                            
                            print("kisi id    : \(kisi["kisi_id"]!)")
                            print("kisi ad    : \(kisi["kisi_ad"]!)")
                            print("kisi tel   : \(kisi["kisi_tel"]!)")
                            
                        }
                    }
                }
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    func tumKisileriAlCodable(){
        
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do {

                let cevap = try JSONDecoder().decode(KisiCevap.self, from: data!)
                
        
                for kisi in cevap.kisiler! {//Gelen cevabın içindeki listeyi almak için döngü
                        
                        print("kisi id    : \(kisi.kisi_id!)")
                        print("kisi ad    : \(kisi.kisi_ad!)")
                        print("kisi tel   : \(kisi.kisi_tel!)")
                    }
                    
                
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
        
        
    }
    
    
}

