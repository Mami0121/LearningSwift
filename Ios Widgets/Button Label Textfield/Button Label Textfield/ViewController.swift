//
//  ViewController.swift
//  Button Label Textfield
//
//  Created by Muhammet on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tikla(_ sender: Any) {
        if let alinanVeri = textfield.text {
            etiket.text = alinanVeri
            textview.text = alinanVeri
        }
    }
    
}

