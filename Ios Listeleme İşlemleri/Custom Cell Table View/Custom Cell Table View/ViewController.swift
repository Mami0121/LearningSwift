//
//  ViewController.swift
//  Custom Cell Table View
//
//  Created by Muhammet on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kisilerTableView.dataSource = self
        kisilerTableView.delegate = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Ahmet", kisiTel: "03342432")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Mehmet", kisiTel: "54545544")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Zeynep", kisiTel: "43546234")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Ece", kisiTel: "343434343")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Kemal", kisiTel: "322342343")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "KisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = gelenKisi.kisiAd
        
        return cell
    }
    
}

