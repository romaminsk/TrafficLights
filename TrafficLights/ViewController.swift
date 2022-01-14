//
//  ViewController.swift
//  TrafficLights
//
//  Created by Roma on 13.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        roundView(view: redView)
        roundView(view: yellowView)
        roundView(view: greenView)
    }
    
    var timer: Timer?

    @IBOutlet weak var redView: UIView!

    @IBOutlet weak var yellowView: UIView!

    @IBOutlet weak var greenView: UIView!

    @IBAction func actionView(_ sender: UIButton) {
        
        let views = [redView, yellowView, greenView]
        var counter = 0
        
        self.yellowView.alpha = 0.3
        self.yellowView.alpha = 0.3
        self.greenView.alpha = 0.3

        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { (timer) in
            
            if counter == 0 {
                self.redView.alpha = 1
                self.yellowView.alpha = 0.3
                self.greenView.alpha = 0.3
            } else if counter == 1 {
                self.yellowView.alpha = 1
                self.redView.alpha = 0.3
                self.greenView.alpha = 0.3
            } else if counter == 2 {
                self.greenView.alpha = 1
                self.redView.alpha = 0.3
                self.yellowView.alpha = 0.3
            }

            counter += 1
            
            if counter > views.count {
                counter = 0
            }
        })
    }

    func roundView(view: UIView) {
        view.layer.cornerRadius = min(view.frame.size.height, view.frame.size.width) / 2.0
        view.clipsToBounds = true
    }
}

