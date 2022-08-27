import UIKit

func kisiTanima(ad:String){
    if ad == "Ahmet"{
        print("Merhaba Ahmet")
    }else {
        print("Tanınmayan kişi")
    }
}

kisiTanima(ad: "Ahmet")


func kisiTanima1(ad:String){
    guard ad == "Ahmet" else{
    print("Tanınmayan Kişi")
        return
    }
   print("Merhaba Ahmet")
}

kisiTanima1(ad: "Ahmetx")


func buyukHarfYap(str:String?){
    if let temp = str {
        print(temp.uppercased())
    } else{
        print("str nil dir")
        return
    }
}

buyukHarfYap(str: nil)

func buyukHarfYap1(str:String?){
    guard let temp = str else{
        print("str nil dir")
        return
    }
    print(temp.uppercased())
}
buyukHarfYap1(str: nil)



