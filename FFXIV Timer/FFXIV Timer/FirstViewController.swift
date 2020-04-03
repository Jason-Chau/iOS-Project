//
//  FirstViewController.swift
//  FFXIV Timer
//
//  Created by Jason Chau on 3/3/20.
//  Copyright © 2020 Jason Chau. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var RealTimeLabel: UILabel!
    @IBOutlet weak var GameTimeLabel: UILabel!
    var RTime = Timer()
    var GTime = Timer()
    var GTMultiplier = (3600/175)

    override func viewDidLoad() {
        super.viewDidLoad()
        RealTimeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        RTime = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        GTime = Timer.scheduledTimer(timeInterval: TimeInterval(GTMultiplier), target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
    }

    @objc func tick() {
        RealTimeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        GameTimeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
    }
}
