//
//  ChooseViewController.swift
//  forSurf
//
//  Created by Максим Япринцев on 16.05.2022.
//
// This VC is used for choose 
import UIKit

class ChooseViewController: UIViewController {
    
    let segueId = "segueIdToList"
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }

    @IBAction func EuropeButton(_ sender: Any) {
        performSegue(withIdentifier: segueId, sender: "europe")
    }
    
    
    @IBAction func asiaButton(_ sender: Any) {
        performSegue(withIdentifier: segueId, sender: "asia")
    }
    
    @IBAction func oceaniaButton(_ sender: Any) {
        performSegue(withIdentifier: segueId, sender: "oceania")
    }
    
    @IBAction func africaButton(_ sender: Any) {
        performSegue(withIdentifier: segueId, sender: "africa")
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueId {
            let destinationController = segue.destination as! ListViewController
            destinationController.region = sender as! String
    

    }

    }
}

