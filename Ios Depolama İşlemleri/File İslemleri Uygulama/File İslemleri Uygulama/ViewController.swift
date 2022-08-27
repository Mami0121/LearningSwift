//
//  ViewController.swift
//  File İslemleri Uygulama
//
//  Created by Muhammet on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldGirdi: UITextField!
    @IBOutlet weak var pictureHolder: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func write(_ sender: Any) {
        
        let massage:String = textfieldGirdi.text!
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            // döküman yolu alınır
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            //kayıt edilmek istenen dosya ve dosyayolu oluşturulur
            do {
                
                try massage.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8)
                
                textfieldGirdi.text = ""
                
            } catch {
                print("Dosya yazılırken hata oluştu.")
            }
            
        }
        
    }
    
    @IBAction func read(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do {
                
                textfieldGirdi.text = try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
                
            } catch {
                print("Dosya yazılırken hata oluştu.")
            }
            
        }

        
        
    }
    
    @IBAction func dele(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
                
                do {
                    
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textfieldGirdi.text = ""
                    
                } catch {
                    print("Dosya silerken hata oluştu.")
                }
                
            }
            
            
           
            
        }
        
    }
    
    
    @IBAction func savePicture(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("image.png")
            
            let image = UIImage(named: "resim")
            
            do {
                
                try image!.pngData()?.write(to: dosyaYolu)
                
            } catch {
                print("Resim yazılırken hata oluştu.")
            }
            
        }
        
    }
    
    @IBAction func showPicture(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("image.png")
            
            self.pictureHolder.image =  UIImage(contentsOfFile: dosyaYolu.path)
        }
        
    }
    @IBAction func deletePicture(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("image.png")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
                
                do {
                    
                    try FileManager.default.removeItem(at: dosyaYolu)
                
                    
                } catch {
                    print("Resim silerken hata oluştu.")
                }
                
            }
            
            
           
            
        }
        
    }
    
}

