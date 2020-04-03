//
//  ViewController.swift
//  FFXIV Timer
//
//  Created by Jason Chau on 3/3/20.
//  Copyright © 2020 Jason Chau. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var DataCenterLabel: UILabel!
    @IBOutlet weak var PickDataCenter: UIPickerView!
    @IBOutlet weak var WorldLabel: UILabel!
    @IBOutlet weak var PickWorld: UIPickerView!
    
    let DataCenters = ["N/A", "Elemental", "Gaia", "Mana", "Primal", "Aether", "Crystal", "Chaos", "Light"]
    
    let ElementalWorlds = ["N/A", "Aegis", "Atomos", "Carbuncle", "Garuda", "Gungnir", "Kujata", "Ramuh", "Tonberry", "Typhon", "Unicorn"]
    
    let GaiaWorlds = ["Alexander", "Bahamut", "Durandal", "Fenrir", "Ifrit", "Ridill", "Tiamat", "Ultima", "Valefor", "Yojimbo", "Zeromus"]
    
    let ManaWorlds = ["Anima", "Asura", "Belias", "Chocobo", "Hades", "Ixion", "Mandragora", "Masamune", "Pandaemonium", "Shinryu", "Titan"]
    
    let PrimalWorlds = ["Behemoth", "Excalibur", "Exodus", "Famfrit", "Hyperion", "Lamia", "Leviathan", "Ultros"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1{
            if DataCenters == ["Gaia"] {
                return GaiaWorlds[row]
            }
            else if DataCenters == ["Mana"] {
                return ManaWorlds[row]
            }
            else if DataCenters == ["Primal"] {
                return PrimalWorlds[row]
            }
            else {
                return DataCenters[row]
            }
        }
        else {
            return ElementalWorlds[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return DataCenters.count
        }
        else{
            return ElementalWorlds.count
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickDataCenter.delegate = self
        self.PickWorld.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func NextButton(_ sender: Any) {
        performSegue(withIdentifier: "LocationSegue", sender: self)
    }
}
