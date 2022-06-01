//
//  DetailViewController.swift
//  forSurf
//
//  Created by Максим Япринцев on 12.05.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var flagLabel: UILabel!
    @IBOutlet weak var officialNameLabel: UILabel!
    @IBOutlet weak var commonNameLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var subregionLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var landlockedLabel: UILabel!
    @IBOutlet weak var startOfWeekLabel: UILabel!
    @IBOutlet weak var carSignsLabel: UILabel!
    @IBOutlet weak var trafficSideLabel: UILabel!
    @IBOutlet weak var statusOutlet: UILabel!
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let country = country else { return }
        flagLabel.text = country.flag
        statusOutlet.text = statusOutlet.text! + " " + country.status
        officialNameLabel.text = country.name.official
        commonNameLabel.text = commonNameLabel.text! + " " + country.name.common
        regionLabel.text = regionLabel.text! + " " + country.region
        subregionLabel.text = subregionLabel.text! + " " + country.subregion
        populationLabel.text = populationLabel.text! + " " + String(country.population)
        areaLabel.text = areaLabel.text! + " " + String(country.area)
        landlockedLabel.text = landlockedLabel.text! + " " + String(country.landlocked)
        startOfWeekLabel.text = startOfWeekLabel.text! + " " + country.startOfWeek
        carSignsLabel.text = carSignsLabel.text! + " " + country.car.signs[0]
        trafficSideLabel.text = trafficSideLabel.text! + " " + country.car.side
        // Do any additional setup after loading the view.*/
    }
    


}
