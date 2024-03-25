//
//  ViewController.swift
//  excercise1
//
//  Created by Dam Hung on 23/03/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!

    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var circleAvatar: CircleView!
    
    @IBOutlet weak var mainCircleAvt: CircleView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var star: UILabel!
    
    @IBOutlet weak var medal: UILabel!
    
    @IBOutlet weak var utimateButton: UIButton!
    
    var isOriginal: Bool = true
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
//         circleAvatar = CircleView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        circleAvatar.backgroundColor = UIColor.red
        circleAvatar.layer.cornerRadius = 25// Đặt màu nền là trong suốt
        mainView.addSubview(circleAvatar)
//         mainCircleAvt = CircleView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        mainCircleAvt.backgroundColor = UIColor.red
        mainCircleAvt.layer.cornerRadius = 75
        
        mainView.addSubview(mainCircleAvt)
    }


    @IBAction func onTap(_ sender: Any) {
        
        if(isOriginal){
            name.text = "Ngày mai trời đẹp lắm"
            star.text = "99.999"
            medal.text = "99.999"
        } else {
            name.text = "Name"
            star.text = "Star"
            medal.text = "Medal"
        }
        isOriginal = !isOriginal
    }
    
    
}

