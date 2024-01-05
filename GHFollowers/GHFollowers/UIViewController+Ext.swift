//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/5/24.
//

import UIKit

extension UIViewController {
    // adding a function to present the custom alert view
    func presentGFAlertMainThread(title: String, message: String, buttonTitle: String) {
        // NOTE: We do not need to use weak self here when working with GCD most of the time
        DispatchQueue.main.async {
            // create an instance of the alert view
            let alertVC = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            // make the alert view modal
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            // present the alert view
            self.present(alertVC, animated: true)
        }
    }
}
