//
//  CellManager.swift
//  MVCApp
//
//  Created by Powroli on 17.07.21.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, with dessert: Dessert) {
        cell.textLabel?.text = dessert.name
        cell.detailTextLabel?.text = dessert.ratingBar
        cell.imageView?.image = dessert.image
    }

}
