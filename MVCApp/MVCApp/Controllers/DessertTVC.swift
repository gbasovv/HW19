//
//  DessertTVC.swift
//  MVCApp
//
//  Created by Powroli on 18.07.21.
//

import UIKit

class DessertTVC: UITableViewController {

    var desserts: [Dessert] = []
    let cellController = CellManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        desserts = DataService.shared.desserts
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowDessertDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let dessert = desserts[indexPath.row]
        let dessertDetailVC = segue.destination as! DessertDetailVC
        dessertDetailVC.dessert = dessert
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return desserts.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DessertCell", for: indexPath)
        let dessert = desserts[indexPath.row]
        cellController.configure(cell, with: dessert)
        return cell
    }

}
