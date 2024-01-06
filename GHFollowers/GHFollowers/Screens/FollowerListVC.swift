//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/5/24.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
