//
//  ViewController.swift
//  Flow
//
//  Created by Kang Minsang on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    var PlayStatus: Bool = false
    @IBOutlet var PlayBTOutlet: UIButton!
    
    @IBOutlet var LyricsNow: UILabel!
    @IBOutlet var LyricsNext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTouch()
    }

    @IBAction func PalyBT(_ sender: Any) {
        if(!PlayStatus) {
            PlayStatus = true
            if let image = UIImage(named: "stop.jpg") {
                PlayBTOutlet.setImage(image, for: .normal)
            }
        } else {
            PlayStatus = false
            if let image = UIImage(named: "start.jpg") {
                PlayBTOutlet.setImage(image, for: .normal)
            }
        }
    }
    
    @objc func tapFunction(sender:UITapGestureRecognizer) {
        goToVC(where: "lyricsViewController")
    }
    @objc func tapFunction2(sender:UITapGestureRecognizer) {
        goToVC(where: "lyricsViewController")
    }
}


extension ViewController {
    
    func setTouch() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction))
        LyricsNow.isUserInteractionEnabled = true
        LyricsNow.addGestureRecognizer(tap)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction2))
        LyricsNext.isUserInteractionEnabled = true
        LyricsNext.addGestureRecognizer(tap2)
    }
}


