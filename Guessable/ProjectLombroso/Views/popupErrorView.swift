//
//  popupErrorView.swift
//  Guessable
//
//  Created by Jacques André Kerambrun on 05/11/22.
//
import SwiftUI

class popupErrorView: UIViewController {

    @IBAction func showAlertButtonTapped(_ sender: UIButton) {

        // create the alert
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}
