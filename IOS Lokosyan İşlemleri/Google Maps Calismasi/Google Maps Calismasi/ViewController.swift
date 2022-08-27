//
//  ViewController.swift
//  Google Maps Calismasi
//
//  Created by Muhammet on 7.08.2022.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    @IBOutlet weak var gmsmapView: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //41.0370014,28.9763369,15z
         let camera = GMSCameraPosition.camera(withLatitude: 41.0370014, longitude: 28.9763369, zoom: 15)
         
         gmsmapView.camera = camera
         
         let marker = GMSMarker()
         marker.position = CLLocationCoordinate2D(latitude: 41.0370014, longitude: 28.9763369)
         marker.title = "Taksim Başlık"
         marker.snippet = "Taksim Alt Başlık"
         marker.map = gmsmapView
    }


}

