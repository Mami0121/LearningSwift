//
//  ViewController.swift
//  User Defaults Çalışması
//
//  Created by Muhammet on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let d = UserDefaults.standard
        
        d.set("Ahmet", forKey: "name")
        d.set(18, forKey: "age")
        d.set(1.78, forKey: "height")
        d.set(true, forKey: "maritalStatus")
        
        let friendList = ["Ali","Veysel","Ece"]
        
        d.set(friendList, forKey: "liste")
        
        let cityList:[String:String] = ["34":"İstanbul","35":"İzmir"]

        d.set(cityList, forKey: "dict")
        
        // Veri Okuma
        
        let name = d.string(forKey: "name") ?? "no name"
        let age = d.integer(forKey: "age")
        let height = d.double(forKey: "height")
        let martialStatus = d.bool(forKey: "martialStatus")
        
        print(name)
        print(age)
        print(height)
        print(martialStatus)
        
        
        let list = d.array(forKey: "list") as? [String] ?? [String]()
        
        print(list[0])

        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        
        print(dict["16"]!)
        
        // Veri Silme
       // d.removeObject(forKey: "name")
        //let namex = d.string(forKey: "name") ?? "no name"
        //print(namex)
        
        // Veri Güncelleme
        d.set("new Ahmet", forKey: "name")
        let namex = d.string(forKey: "name") ?? "no name"
        print(namex)
        
        
    }


}

