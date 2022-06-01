//
//  ViewController.swift
//  forSurf
//
//  Created by Максим Япринцев on 07.05.2022.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     @IBOutlet weak var tableView: UITableView!
    
    
    let netrworkManager = NetrworkManager()
    let segueId = "segueIdentifier"
    var region: String = ""
    var dataSource: [Country] = []
    
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        
        
        netrworkManager.getCountry(complition: { country in
            self.dataSource = country
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }, region: region)
        
        
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Identifier", for: indexPath)
        let country = dataSource[indexPath.row]
        cell.textLabel?.text = country.name.common + " " + country.flag
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = dataSource[indexPath.row]
        performSegue(withIdentifier: segueId, sender: country)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueId, let country = sender as? Country {
            let destinationController = segue.destination as! DetailViewController
            destinationController.country = country
        }
    }

}

