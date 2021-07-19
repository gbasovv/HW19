//
//  ReviewsTVC.swift
//  MVCApp
//
//  Created by Powroli on 18.07.21.
//

import UIKit


class ReviewsTVC: UITableViewController {

    var feedbacks: [Feedback] = []


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedbacks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DessertCell", for: indexPath) as! ReviewCell
        let review = feedbacks[indexPath.row]
        cell.dateLbl.text = review.currentDate
        cell.ratingLbl.text = String(repeating: "⭐️", count: review.rating)
        cell.reviewLbl.text = review.feedback
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }



}

