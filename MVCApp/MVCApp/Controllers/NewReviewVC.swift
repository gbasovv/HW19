//
//  NewReviewVC.swift
//  MVCApp
//
//  Created by Powroli on 18.07.21.
//

import UIKit

class NewReviewVC: UIViewController {

    weak var delegate: DessertDetailVCDelegate?

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var pickerView: UIPickerView!

    var pickerData = ["⭐️", "⭐️⭐️", "⭐️⭐️⭐️",
        "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func save() {
        let selectRow = pickerData[self.pickerView.selectedRow(inComponent: 0)]
        guard let text = textView.text else { return }
        delegate?.update(textView: text, pickerView: selectRow)
    }

}

extension NewReviewVC: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[row]
    }
}

