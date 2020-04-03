//
//  SecondViewController.swift
//  FFXIV Timer
//
//  Created by Jason Chau on 3/3/20.
//  Copyright © 2020 Jason Chau. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var RealTimeLabel: UILabel!
    var timer = Timer()

        override func viewDidLoad() {
            super.viewDidLoad()
            RealTimeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        }

        @objc func tick() {
            RealTimeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        }
    }
