//
//  ViewController2.swift
//  Show Segue
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func geri(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goto3(_ sender: Any) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
            navigationController?.pushViewController(gidilecekViewController, animated: true)
    }
    
}
