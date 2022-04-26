//
//  ViewController.swift
//  Timer App
//
//  Created by Ömer Faruk Kılıçaslan on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ciktiLabel: UILabel!
    
    var sayici:Timer?
    var sayac1 = 1
    var sayac2 = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basla(_ sender: Any) {
        
        sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(geriSay), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func ileriSay(){
        ciktiLabel.text = String(sayac1)
        sayac1 += 1
        
        if sayac1 > 6 {
            sayici?.invalidate()
            ciktiLabel.text = "Süre Bitti"
            sayac1 = 1
        }
    }
    
    @objc func geriSay(){
        ciktiLabel.text = String(sayac2)
        sayac1 -= 1
        
        if sayac1 > 0 {
            sayici?.invalidate()
            ciktiLabel.text = "Süre Bitti"
            sayac2 = 5
        }
    }
}

