//
//  FirstViewController.swift
//  OwoceiWarzywka
//
//  Created by Aleksander Czubiak on 22/01/2020.
//  Copyright © 2020 Aleksander Czubiak. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var nazwaProduktu: UITextField!
    @IBOutlet weak var liczbaKalorii: UITextField!
    @IBOutlet weak var ObliczoneKalorie: UILabel!
    
    
    
    let produkty = ["jablko","ser","chleb"]
    let produktyKcal = [5,10,15]
    @IBAction func Obliczenie(_ sender: Any) {
        var x = 0
        var y = 0
        for item in produkty{
            x += 1
            if item == nazwaProduktu.text{
                print("Polaczenie" , x , item)
                for item2 in produktyKcal {
                    y += 1
                    if x == y {
                        print("Liczba kalorii wynosi: ", item2)
                        //Tu bedzie cały kod odpowiadajacy za liczenie.
                        if let resault = liczbaKalorii.text {
                            if (resault == ""){
                                return
                            }
                            else {
                                if let num = Double(resault) {
                                    let output = num * Double(item2)
                                    ObliczoneKalorie.text = String(output) + " kcal"
                                }
                            }
                        }
                    }
                }
        }
    }
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    


}

}
