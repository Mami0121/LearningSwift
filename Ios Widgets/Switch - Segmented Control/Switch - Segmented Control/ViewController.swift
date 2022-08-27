//
//  ViewController.swift
//  Switch - Segmented Control
//
//  Created by Muhammet on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiswitch: UISwitch!
    @IBOutlet weak var segmentedcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SegmentedDegisimKontrol(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            print("Segmented Aç seçildi")
        }
        if sender.selectedSegmentIndex == 1 {
            print("Segmented Kapat seçildi")
        }
        
    }
    
    @IBAction func swicthkonumdegistir(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch Açık")
        } else{
            print("Switch Kapalı")
        }
   /* @IBAction func tikla(_ sender: Any) {
        
        print("Switch Durum : \(uiswitch.isOn)")
        print("Segmented Durum : \(segmentedcontrol.selectedSegmentIndex)")
    }
    */
    
        
}

}
