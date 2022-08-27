//
//  ViewControllerB.swift
//  Sayfalar arası geçiş
//
//  Created by Muhammet on 20.07.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    var mesaj:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiket.text = mesaj!
    }
    
}
