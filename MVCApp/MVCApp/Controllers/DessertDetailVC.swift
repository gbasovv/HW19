//
//  DessertDetailVC.swift
//  MVCApp
//
//  Created by Powroli on 17.07.21.
//

import UIKit

protocol DessertDetailVCDelegate: AnyObject {
    func update(textView: String, pickerView: String)
}

class DessertDetailVC: UIViewController {

    @IBOutlet weak var dessertImage: UIImageView!
    @IBOutlet weak var noteLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var reviewsBtn: UIButton!
    
    var dessert: Dessert!

    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowReviews" {
            guard segue.identifier == "ShowReviews" else { return }
            let ReviewsTVC = segue.destination as! ReviewsTVC
            ReviewsTVC.feedbacks = dessert.feedbacks
        } else if segue.identifier == "WriteReview" {
            guard segue.identifier == "WriteReview" else { return }
            let NewReviewVC = segue.destination as! NewReviewVC
            NewReviewVC.delegate = self
        }
    }

    private func update() {
        title = dessert.name
        dessertImage.image = dessert.image
        ratingLbl.text = dessert.ratingBar
        noteLbl.text = dessert.notes
    }
    
}

extension DessertDetailVC: DessertDetailVCDelegate {
    func update(textView: String, pickerView: String) {
    }
}
